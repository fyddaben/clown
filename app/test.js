var program = require('commander');
program
    .allowUnknownOption()
    .version('0.0.1')
    .option('-d, --no-date', 'don‘t display current date')
    .option('-r, --resume', '简历')
    .option('-l, --language <lang>', '这个语言是我擅长的语言。')
    .parse(process.argv);

if (program.resume) {
    console.log(
        + '-'
        + '这个是我的简历！'
    );
}

if (program.language) console.log('language: 我擅长的语言`' + program.language + '`');
if (program.database) console.log('db: 我擅长的语言`' + program.database + '`');
