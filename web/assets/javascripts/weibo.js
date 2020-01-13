// $(function() {
//   var head = $("#weiboiframe").contents().find("head");
//   var css = '<style type="text/css">' +
//           '#weiboiframe .m-btn-white.m-btn-text-orange{display:none}; ' +
//           '</style>';
//   $(head).append(css);
// });
var cssLink = document.createElement("link");
cssLink.href = "../stylesheets/weibo.css"; 
cssLink.rel = "stylesheet"; 
cssLink.type = "text/css"; 
frames['weiboiframe'].document.head.appendChild(cssLink);