function setTheme(theme) {
  if (theme === 'dark') {
    document.body.classList.add('dark-theme');
    localStorage.setItem('theme', 'dark');
  } else {
    document.body.classList.remove('dark-theme');
    localStorage.setItem('theme', 'light');
  }
}

function toggleTheme() {
  if (document.body.classList.contains('dark-theme')) {
    setTheme('light');
  } else {
    setTheme('dark');
  }
}

// Check for saved theme preference or use the system preference
const savedTheme = localStorage.getItem('theme');
const systemDarkTheme = window.matchMedia('(prefers-color-scheme: dark)');

if (savedTheme) {
  setTheme(savedTheme);
} else if (systemDarkTheme.matches) {
  setTheme('dark');
}

// Add event listener for system theme changes
systemDarkTheme.addListener(e => {
  if (!localStorage.getItem('theme')) {
    setTheme(e.matches ? 'dark' : 'light');
  }
});

// Initialize theme toggle button
document.addEventListener('DOMContentLoaded', () => {
  const themeToggle = document.getElementById('theme-toggle');
  themeToggle.addEventListener('click', toggleTheme);
});
