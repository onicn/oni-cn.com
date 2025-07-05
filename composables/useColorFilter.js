// Helper function to convert RRGGBBAA color to SVG color matrix for pixel multiplication
export const getColorMatrix = (colorHex) => {
  if (!colorHex || colorHex.length < 8) return "1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 1 0";
  
  // Extract RGBA from RRGGBBAA format
  const r = parseInt(colorHex.substring(0, 2), 16) / 255;
  const g = parseInt(colorHex.substring(2, 4), 16) / 255;
  const b = parseInt(colorHex.substring(4, 6), 16) / 255;
  const a = parseInt(colorHex.substring(6, 8), 16) / 255;
  
  // Create matrix for pixel multiplication: finalPixel = pixel * color
  // Matrix format: [R' G' B' A' offset] for each channel
  return `${r} 0 0 0 0  0 ${g} 0 0 0  0 0 ${b} 0 0  0 0 0 ${a} 0`;
};

// Composable for color filter functionality
export const useColorFilter = () => {
  return {
    getColorMatrix
  };
};