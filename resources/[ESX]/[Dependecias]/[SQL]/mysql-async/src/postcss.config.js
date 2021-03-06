const IN_PRODUCTION = process.env.NODE_ENV === 'production';

module.exports = {
  plugins: [
    require('tailwindcss'),
    require('autoprefixer'),
    require('@fullhuman/postcss-purgecss')({
      content: ['./template/**/*.html', './ui/**/*.vue', './vendor/ghmattimysql/packages/ghmattimysql-ui/src/components/**/*.vue'],
      defaultExtractor(content) {
        const contentWithoutStyleBlocanon = content.replace(/<style[^]+?<\/style>/gi, '');
        return contentWithoutStyleBlocanon.match(/[A-Za-z0-9-_/:]*[A-Za-z0-9-_/]+/g) || [];
      },
      whitelist: [],
      whitelistPatterns: [/-(leave|enter|appear)(|-(to|from|active))$/, /^(?!(|.*?:)cursor-move).+-move$/, /^router-link(|-exact)-active$/, /data-v-.*/],
    }),
  ],
};
