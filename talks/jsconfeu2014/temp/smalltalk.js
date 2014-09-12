
var fs = require('fs');

var input = process.argv[2];
var result = fs.readFileSync(input)
  .toString()
  .replace(/\^/g, "return ")
  .replace(/!(\w+) methodsFor: '[^']*'!((?:.|\n)*?!)!/g, function (_, n, methods) {
    prefix = n + '.prototype.';
    methods = methods.replace(/((?:.|\n)*?)!/g, function (_, method) {
      return method.replace(/\n/g, '')
                   .replace(/^\s*(\w+\s*(:\s*\w+(\s*\w+\s*:\s*\w+)*)?)(.*)$/, function (_, c, _, _, body) {
        var name =  c.replace(/\s*:\s*\w+\s*/g, '$').trim();
        var args = c.replace(/\s*\w+\s*:/g, '').trim().replace(/\s+/g, ', ');
        var locals = ['self'].concat(args.split(','));
        locals.forEach(function (arg) {
          body = body.replace(new RegExp(arg + "\\s+", "g"), arg + ".");
        })
        return prefix + name + ' = function (' + args + ') {' + body + "}\n";
      });
    })   
    return methods;
  })

fs.writeFileSync(input + ".js", result);