/**
 * @Author : lcc
 * @CreateData : 2024/7/5
 * @Description:
 */

export interface MarkdownTheme {
  themeColor?: ResourceColor
  blockQuote?: BlockQuoteTheme
  h1?: HeadingTheme
  h2?: HeadingTheme
  h3?: HeadingTheme
  h4?: HeadingTheme
  h5?: HeadingTheme
  h6?: HeadingTheme
  image?: ImageTheme
  link?: LinkTheme
  codeSpan?: CodeSpan,
  codeHighlight?: Record<CodeHighLight, ResourceColor | undefined>
}


export interface CodeSpan {
  backgroundColor?: ResourceColor,
  borderRadius?: Dimension | BorderRadiuses,
}

export interface LinkTheme {
  fontColor?: ResourceColor
}

export interface ImageTheme {
  width?: Length
  height?: Length
  objectFit?: ImageFit
}

export interface MarkdownFontStyle {
  fontColor?: ResourceColor
  fontWeight?: FontWeight
  fontSize?: Length
}

export interface BlockQuoteTheme {
  backgroundColor?: ResourceColor;
  borderRadius?: Length,
  driveColor?: ResourceColor;
  driveWidth?: string | number
}



export interface HeadingTheme {
  // ---------------------- 原有核心属性 ----------------------
  fontWeight?: FontWeight;    // 字体粗细（原属性）
  fontSize?: Length;          // 字体大小（原属性）

  // ---------------------- 1. 文本扩展样式 ----------------------
  fontColor: ResourceColor;  // 标题文本颜色（比如H1用黑色，H2用深灰色）
  fontStyle?: 'normal' | 'italic'; // 字体样式（正常/斜体，比如英文标题常用斜体）


  // ---------------------- 2. 背景样式 ----------------------
  backgroundColor?: ResourceColor; // 标题背景色（比如浅色背景突出标题）
  backgroundImage?: string;        // 背景图片（小众需求，比如标题带渐变背景）
  backgroundSize?: 'cover' | 'contain' | 'auto'; // 背景图尺寸（配合backgroundImage使用）

  // ---------------------- 3. 边框样式 ----------------------
  borderWidth?: Length;         // 边框宽度（整体边框，或配合borderSide单独控制）
  borderColor?: ResourceColor;   // 边框颜色
  borderStyle?: BorderStyle;     // 边框样式（实线solid/虚线dashed/点线dotted）
  borderRadius?: Length;         // 边框圆角（背景+边框的圆角，比如圆角标题）

  width?: Length | 'auto' | '100%'; // 标题宽度（默认100%，可设固定宽度居中）
  textAlign?: TextAlign; // 文本对齐方式（比如H1居中，H2左对齐）
}


type CodeHighLight = 'string' | 'text' | 'keyword' | 'type' | 'symbol' | 'number' | 'boolean'