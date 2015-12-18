---
layout: page
title: "Kazesawa フォントを Web フォントとして利用する"
---

Kazesawa フォントを Web フォントとして利用する 2 つの方法について説明します。

## この GitHub Pages から配信されているものを使う

この方法はあまり推奨されませんが、手軽に Web フォントで Kazesawa を試してみることができます。

{% highlight html %}
<link rel="stylesheet" href="https://kazesawa.github.io/css/webfont.css">
{% endhighlight %}

以上のような行を試したいアプリケーションの `<head>` タグの中などに追記し、Kazesawa を使用したい HTML の要素の `font-family` プロパティを `Kazesawa-Regular` などに設定すれば動作するはずです。

たとえば codepen.io で試すとこのようになります:

[![Web font test on codepen.io](/images/articles/codepen-webfont.png)](http://codepen.io/anon/pen/rxevJa?editors=110)

## 自分でフォントファイルを配信する

[GitHub のリリースページ](https://github.com/kazesawa/kazesawa/releases)や[レポジトリ](https://github.com/kazesawa/kazesawa/)から TTF ファイルと WOFF ファイルをそれぞれ引っぱってきて、それを適宜配信してください。以下のような CSS をアプリケーションに組み込むとよいと思います。

{% highlight css %}
@font-face {
  font-family: "Kazesawa-ExtraLight";
  src: url("/fonts/Kazesawa-ExtraLight.woff"), url("/fonts/Kazesawa-ExtraLight.ttf");
}
@font-face {
  font-family: "Kazesawa-Light";
  src: url("/fonts/Kazesawa-Light.woff"), url("/fonts/Kazesawa-Light.ttf");
}
@font-face {
  font-family: "Kazesawa-Regular";
  src: url("/fonts/Kazesawa-Regular.woff"), url("/fonts/Kazesawa-Regular.ttf");
}
@font-face {
  font-family: "Kazesawa-Semibold";
  src: url("/fonts/Kazesawa-Semibold.woff"), url("/fonts/Kazesawa-Semibold.ttf");
}
@font-face {
  font-family: "Kazesawa-Bold";
  src: url("/fonts/Kazesawa-Bold.woff"), url("/fonts/Kazesawa-Bold.ttf");
}
@font-face {
  font-family: "Kazesawa-Extrabold";
  src: url("/fonts/Kazesawa-Extrabold.woff"), url("/fonts/Kazesawa-Extrabold.ttf");
}
{% endhighlight %}
