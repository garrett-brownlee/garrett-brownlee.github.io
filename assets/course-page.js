// Encodes each part of a file path so spaces, #, &, etc. work safely in links
function encodePath(path) {
    return path.split('/').map(encodeURIComponent).join('/');
}

const ICONS = {
    pdf: '📄', doc: '📝', docx: '📝', xls: '📊', xlsx: '📊', csv: '📊',
    ppt: '📽️', pptx: '📽️', png: '🖼️', jpg: '🖼️', jpeg: '🖼️',
    mp4: '🎬', r: '💻', txt: '📃', md: '📃'
};

function isLink(file) { return /^https?:\/\//.test(file); }
function extOf(file) { return file.split('.').pop().toLowerCase(); }
function iconFor(file) { return isLink(file) ? '🔗' : (ICONS[extOf(file)] || '📁'); }
function labelFor(file) { return isLink(file) ? 'Link' : extOf(file).toUpperCase(); }

function renderCourse(course) {
    document.title = 'Canvas Portfolio - ' + course.code;
    document.getElementById('course-title').textContent = course.code + ' — ' + course.title;
    document.getElementById('course-meta').textContent = course.term;

    const container = document.getElementById('groups');

    course.groups.forEach(function (group) {
        const card = document.createElement('div');
        card.className = 'canvas-module-card';

        const header = document.createElement('div');
        header.className = 'module-header';
        header.textContent = '▼ ' + group.name + ' (' + group.files.length + ')';
        card.appendChild(header);

        group.files.forEach(function (entry) {
            const title = entry[0];
            const file = entry[1];

            const row = document.createElement('div');
            row.className = 'module-item';
            row.innerHTML =
                '<div class="item-left"><span></span><a class="item-title-link" target="_blank" rel="noopener"></a></div>' +
                '<span class="item-meta"></span>';
            row.querySelector('span').textContent = iconFor(file);
            row.querySelector('a').textContent = title;
            row.querySelector('a').href = isLink(file) ? file : encodePath(file);
            row.querySelector('.item-meta').textContent = labelFor(file);
            card.appendChild(row);
        });

        container.appendChild(card);
    });

    // Search box: hides rows (and empty groups) that don't match what you type
    document.getElementById('filter').addEventListener('input', function (e) {
        const q = e.target.value.toLowerCase();
        container.querySelectorAll('.canvas-module-card').forEach(function (card) {
            let anyVisible = false;
            card.querySelectorAll('.module-item').forEach(function (row) {
                const match = row.textContent.toLowerCase().includes(q);
                row.classList.toggle('hidden', !match);
                if (match) anyVisible = true;
            });
            card.classList.toggle('hidden', !anyVisible);
        });
    });
}
