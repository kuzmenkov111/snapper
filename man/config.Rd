% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/config.R
\name{config}
\alias{config}
\title{Configure html2canvas}
\usage{
config(
  allowTaint,
  backgroundColor,
  canvas,
  foreignObjectRendering,
  imageTimeout,
  ignoreElements,
  logging,
  onclone,
  proxy,
  removeContainer,
  useCORS,
  scale,
  width,
  height,
  x,
  y,
  scrollX,
  scrollY,
  windowWidth,
  windowHeight,
  ...
)
}
\arguments{
\item{allowTaint}{Whether to allow cross-origin images to taint the canvas.
Default = FALSE}

\item{backgroundColor}{Canvas background color, if none is specified in DOM.
Set NULL for transparent. Default: '#ffffff'}

\item{canvas}{Existing canvas element to use as a base for drawing on.
Default = NULL}

\item{foreignObjectRendering}{Whether to use ForeignObject rendering if the
browser supports it. Default = FALSE}

\item{imageTimeout}{Timeout for loading an image (in milliseconds).
Set to 0 to disable timeout. Default: 15000}

\item{ignoreElements}{Predicate function which removes the matching elements
from the render. Usage: '(element) => false'}

\item{logging}{Enable logging for debug purposes. Default = TRUE}

\item{onclone}{Callback function which is called when the Document has been
cloned for rendering, can be used to modify the contents that will be rendered
without affecting the original source document. Default = NULL}

\item{proxy}{Url to the proxy which is to be used for loading cross-origin images.
If left empty, cross-origin images will not be loaded. Default = NULL}

\item{removeContainer}{Whether to cleanup the cloned DOM elements html2canvas
creates temporarily. Default = TRUE}

\item{useCORS}{Whether to attempt to load images from a server using CORS.
Default = FALSE}

\item{scale}{The scale to use for rendering. Defaults to the browsers
device pixel ratio. Default: 'window.devicePixelRatio'}

\item{width}{The width of the canvas. Default: Element width}

\item{height}{The height of the canvas. Default: Element height}

\item{x}{Crop canvas x-coordinate. Default: Element x-offset}

\item{y}{Crop canvas y-coordinate. Default: Element y-offset}

\item{scrollX}{The x-scroll position to used when rendering element,
(for example if the Element uses position: fixed). Default: Element scrollX}

\item{scrollY}{The y-scroll position to used when rendering element,
(for example if the Element uses position: fixed). Default: Element scrollY}

\item{windowWidth}{Window width to use when rendering Element,
which may affect things like Media queries. Default: 'window.innerWidth'}

\item{windowHeight}{Window height to use when rendering Element,
which may affect things like Media queries. Default: 'window.innerHeight'}

\item{\dots}{not used}
}
\value{
json
}
\description{
Customize configuration of the html2canvas call.
}
\details{
To find further information on the configurations that can be used
please refer to \href{https://html2canvas.hertzen.com/documentation}{html2canvas}
}
\concept{config}
