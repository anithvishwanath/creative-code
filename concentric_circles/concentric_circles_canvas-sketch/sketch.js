const canvasSketch = require('canvas-sketch');

const settings = {
  dimensions: [1000, 1000],
  units: 'px',
  pixelsPerInch: 300,
  pixelRatio: 2,
  animate: true,
  duration: 2,
  fps: 60
};

const numCircles = 10;
const minDiameter = 1; 
const maxDiameter = 1000;
const diameterStep = (maxDiameter - minDiameter) / numCircles;

const maxStroke = 5;
const strokeStep = maxStroke / numCircles;

const sketch = () => {
  return ({ context, width, height, playhead }) => {
    const backgroundColor = `rgb(203, 232, 107)`;
    context.fillStyle = backgroundColor;
    context.fillRect(0, 0, width, height);

    const speed = 2;

    const animatedBaseDiameter = (playhead * speed * diameterStep) % diameterStep;

    for (let i = 0; i < numCircles; i++) {
      const animatedDiameter = animatedBaseDiameter + minDiameter + i * diameterStep; 
      const currentStroke = Math.max(maxStroke - i * strokeStep, 0);
      
      context.lineWidth = currentStroke;
      const alpha = Math.max(0, 1 - (animatedDiameter / maxDiameter));
      context.strokeStyle = `rgba(28, 20, 13, ${alpha})`;

      context.beginPath();
      context.ellipse(width / 2, height / 2, animatedDiameter / 2, animatedDiameter / 2, 0, 0, Math.PI * 2);
      context.stroke();
      context.closePath();
    }
  };
};

canvasSketch(sketch, settings);