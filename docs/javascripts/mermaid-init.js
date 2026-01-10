mermaid.initialize({ 
  startOnLoad: true,
  // 'loose' is required to allow the CSS translateY and stroke-halo to work
  securityLevel: 'loose', 
  flowchart: { 
    htmlLabels: true,
    // 'linear' keeps the arrow path predictable and centered
    curve: 'linear',    
    // Increased to 110 to ensure the "Outside" title has clear air 
    // between the boxes without being struck by the arrow heads.
    rankSpacing: 110,    
    nodeSpacing: 50,
    useMaxWidth: true
  } 
});