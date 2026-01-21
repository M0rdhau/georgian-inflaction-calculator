async function loadFile(url) {
  try {
    const response = await fetch(url);

    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.text();
    console.log(data);
  } catch (error) {
    console.error('Error:', error);
  }
}

// Example usage:
loadFile('https://example.com/path/to/yourfile.json');
