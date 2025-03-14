//
//  File.swift
//
//
//  Created by morse on 2023/7/3.
//

import Foundation

@testable import HamsterKeyboardKit

extension HamsterConfiguration {
  /// 用于测试的模拟数据
  static let preview = HamsterConfiguration(
    general: GeneralConfiguration(
      enableAppleCloud: true,
      regexOnCopyFile: ["^.text|.yaml$"]),
    toolbar: KeyboardToolbarConfiguration(
      enableToolbar: true,
      heightOfToolbar: 65,
      displayKeyboardDismissButton: true,
      heightOfCodingArea: 15,
      codingAreaFontSize: 20, candidateWordFontSize: 25, candidateCommentFontSize: 18,
      displayIndexOfCandidateWord: true),
    keyboard: KeyboardConfiguration(
      displayButtonBubbles: true,
      enableKeySounds: true,
      enableHapticFeedback: true,
      hapticFeedbackIntensity: 3,
      displaySemicolonButton: true,
      displaySpaceLeftButton: true,
      keyValueOfSpaceLeftButton: ",",
      displaySpaceRightButton: true,
      keyValueOfSpaceRightButton: ".",
      displayChineseEnglishSwitchButton: true,
      chineseEnglishSwitchButtonIsOnLeftOfSpaceButton: true,
      enableNineGridOfNumericKeyboard: true,
      enterDirectlyOnScreenByNineGridOfNumericKeyboard: true,
      symbolsOfGridOfNumericKeyboard: ["+", "-", "*", "/"],
      lockShiftState: true,
      enableEmbeddedInputMode: true,
      widthOfOneHandedKeyboard: 80,
      symbolsOfCursorBack: ["\"\"", "“”", "[]"],
      symbolsOfReturnToMainKeyboard: [",", ".", "!"],
      pairsOfSymbols: ["[]", "()", "“”"],
      enableSymbolKeyboard: true,
      lockForSymbolKeyboard: true,
      enableColorSchema: true,
      useColorSchemaForLight: "solarized_light",
      useColorSchemaForDark: "solarized_light",
      colorSchemas: [
        .init(
          schemaName: "solarized_light",
          name: "曬經・日／Solarized Light",
          author: "雪齋 <lyc20041@gmail.com>",
          backColor: "0xF0E5F6FB",
          borderColor: "0xEDFFFF",
          hilitedTextColor: "0x2C8BAE",
          hilitedBackColor: "0x4C4022",
          hilitedCandidateTextColor: "0x3942CB",
          hilitedCandidateBackColor: "0xD7E8ED",
          hilitedCommentTextColor: "0x8144C2",
          candidateTextColor: "0x005947",
          commentTextColor: "0x595E00")
      ]),
    rime: .init(
      maximumNumberOfCandidateWords: 30,
      keyValueOfSwitchSimplifiedAndTraditional: "simplified",
      overrideDictFiles: true),
    swipe: .init())

  static let sampleString = """
  # 通用配置
  general:
    enableAppleCloud: false
    regexOnCopyFile:
  #    - ^.*[.]userdb.*$
  #    - ^.*build.*$
  #    - ^.*SharedSupport.*$
  #    - ^.*[.]bin$

  # 工具栏
  toolbar:
    # 是否开启工具栏
    enableToolbar: true
    # 显示键盘 icon 按钮
    displayAppIconButton: false
    # 显示键盘 dissmiss 按钮
    displayKeyboardDismissButton: false
    # 工具栏总高度
    heightOfToolbar: 50
    # 拼写区高度(剩余高度由候选文字占用)
    heightOfCodingArea: 10
    # 拼写区字体大小
    codingAreaFontSize: 12
    # 候选文字字体大小
    candidateWordFontSize: 18
    # 候选文字备注信息字体大小。
    # 对应 rime 候选字的 comment 信息
    candidateCommentFontSize: 12
    # 是否显示候选文字索引
    displayIndexOfCandidateWord: false
    # 是否显示候选文字 Comment 信息
    displayCommentOfCandidateWord: false

  # 键盘相关配置
  keyboard:
    # 使用键盘类型:
    # chinese: 中文26键
    # chineseNineGrid: 中文九宫格
    # custom(name): 自定义键盘，其中 name 对应自定义键盘配置(customizeKeyboards)中的 name。如: custom(中文26键)
    useKeyboardType: chinese
    # 关闭划动文本显示
    disableSwipeLabel: false
    # 上下显示划动文本不规则布局
    swipeLabelUpAndDownIrregularLayout: false
    # 上下显示划动文本规则布局
    swipeLabelUpAndDownLayout: false
    # 上划显示到左侧
    upSwipeOnLeft: true
    # 显示按键气泡
    displayButtonBubbles: true
    # 启用按键声
    enableKeySounds: true
    # 启用触控反馈
    enableHapticFeedback: false
    # 反馈强度
    hapticFeedbackIntensity: 3
    # 启用分号按键
    displaySemicolonButton: false
    # 启用符号按键
    displayClassifySymbolButton: false
    # 启用空格左侧按键
    displaySpaceLeftButton: false
    spaceLeftButtonProcessByRIME: true
    keyValueOfSpaceLeftButton: ","
    # 启用空格右侧按键
    displaySpaceRightButton: false
    spaceRightButtonProcessByRIME: true
    keyValueOfSpaceRightButton: "."
    # 启用中英切换按键
    displayChineseEnglishSwitchButton: false
    # 按键位于空格左侧
    chineseEnglishSwitchButtonIsOnLeftOfSpaceButton: false
    # 启用数字九宫格键盘
    enableNineGridOfNumericKeyboard: true
    # (数字九宫格键盘)符号是否直接上屏
    enterDirectlyOnScreenByNineGridOfNumericKeyboard: true
    symbolsOfGridOfNumericKeyboard:
      - +
      - "-"
      - "*"
      - /
    lockShiftState: true
    enableEmbeddedInputMode: false
    widthOfOneHandedKeyboard: 80
    symbolsOfCursorBack:
      - '""'
      - "“”"
      - "[]"
    symbolsOfReturnToMainKeyboard:
      - "，"
      - "。"
      - "！"
    symbolsOfChineseNineGridKeyboard:
      - "，"
      - "。"
      - "？"
      - "！"
      - "…"
      - "~"
      - "'"
      - "、"
    pairsOfSymbols:
      - "[]"
      - ()
      - "“”"
    enableSymbolKeyboard: true
    lockForSymbolKeyboard: false

    # 是否启用空格加载文本
    enableLoadingTextForSpaceButton: true

    # 空格按钮加载文本
    loadingTextForSpaceButton: ""

    # 空格按钮长显文本
    labelTextForSpaceButton: ""

    # 空格按钮长显为当前输入方案
    # 当开启此选项后，labelForSpaceButton 设置的值无效
    showCurrentInputSchemaNameForSpaceButton: false

    # 空格按钮加载文字显示当前输入方案
    # 当开启此选项后， loadingTextForSpaceButton 设置的值无效
    showCurrentInputSchemaNameOnLoadingTextForSpaceButton: false

    # 是否启用配色方案
    enableColorSchema: false
    # 浅色模式下配色
    useColorSchemaForLight: ""
    # 暗色模式下配色
    useColorSchemaForDark: ""

    # 配色方案
    # 来源: https://github.com/rime/squirrel/blob/master/data/squirrel.yaml
    colorSchemas:
      - schemaName: solarized_dark
        name: 曬經・月／Solarized Dark
        author: 雪齋 <lyc20041@gmail.com>/Morse <morse.hsiao@gmail.com>
        back_color: 0xF0352A0A # 键盘背景色
        button_back_color: 0xF0352A0A # 按键背景色
        button_pressed_back_color: 0x403516 # 按下时按键背景色
        button_front_color: 0x7389FF # 按键上文字颜色
        button_pressed_front_color: 0x7389FF # 按下时按键上文字颜色
        button_swipe_front_color: 0x7389FF # 按键上划动文字的颜色
        corner_radius: 5 # 按键圆角半径
        border_color: 0x2A1F00 # 按键边框颜色
        text_color: 0x756E5D # 组字区域文字颜色
        hilited_candidate_back_color: 0x403516 # 候选栏首选文字区域背景色
        hilited_candidate_text_color: 0x989F52 # 候选栏首选文字颜色
        hilited_comment_text_color: 0x289989 # 候选栏首选文字 Comment 信息颜色
        candidate_text_color: 0x7389FF # 候选栏次选文字颜色
        comment_text_color: 0xC38AFF # 候选栏次选文字 Comment 信息颜色
      - schemaName: solarized_light
        name: 曬經・日／Solarized Light
        author: 雪齋 <lyc20041@gmail.com>/Morse <morse.hsiao@gmail.com>
        back_color: 0xF0E5F6FB # 键盘背景色
        button_back_color: 0xF0E5F6FB # 按键背景色
        button_pressed_back_color: 0xD7E8ED # 按下时按键背景色
        button_front_color: 0x595E00 # 按键上文字颜色
        button_pressed_front_color: 0x595E00 # 按下时按键上文字颜色
        button_swipe_front_color: 0x595E00 # 按键上划动文字的颜色
        corner_radius: 5 # 按键圆角半径
        border_color: 0xEDFFFF # 按键边框颜色
        text_color: 0xA1A095 # 组字区域文字颜色
        hilited_candidate_back_color: 0xD7E8ED # 候选栏首选文字区域背景色
        hilited_candidate_text_color: 0x3942CB # 候选栏首选文字颜色
        hilited_comment_text_color: 0x8144C2 # 候选栏首选文字 Comment 信息颜色
        candidate_text_color: 0x595E00 # 候选栏次选文字颜色
        comment_text_color: 0x005947 # 候选栏次选文字 Comment 信息颜色

  # RIME 引擎相关配置
  rime:
    maximumNumberOfCandidateWords: 100
    keyValueOfSwitchSimplifiedAndTraditional: simplified
    # RIME 重新部署时，是否覆盖词库文件
    # 如果使用自造词，需要改为 false, 否则部署时会覆盖键盘自造词文件
    overrideDictFiles: true
    # 覆盖词库文件的正则表达式
    # 使用场景：
    # 在开启 overrideDictFiles 后，每次重新部署会按照正则表达式符合的条件翻盖文件
    regexOnOverrideDictFiles:
      - "^.*[.]userdb.*$"
      - "^.*[.]txt$"
    # 拷贝键盘文件至应用沙盒目录的正则表达式，只会拷贝并覆盖符合表达式的文件。
    # 正则表达式为空时，则使用默认值 ["^.*[.]userdb.*$", "^.*[.]txt$"]
    # 使用场景：在文件管理功能中，拷贝键盘词库文件至应用
    regexOnCopyAppGroupDictFile:
      - "^.*[.]userdb.*$"
      - "^.*[.]txt$"

  # 划动相关配置
  swipe:
    # 指空格移动多个 point，光标移动一位。所以数字越小越灵敏
    spaceDragSensitivity: 5

    # 划动距离阈值，当划动的距离大于或等于此值时，才会识别为一次划动
    distanceThreshold: 20

    # 此值是正切角度的阈值，用来限制上下左右划动时的角度，如果太大容易误触
    # 默认为 15 度的正切值，即上下左右划的的角度不能超过 15 度
    # tan(10º) ≈ 0.176, tan(15º) ≈ 0.268, tan(30º) ≈ 0.577, tan(45º) = 1, tan(60º) ≈ 1.732
    tangentThreshold: 0.577
    # 长按延迟时间，只要大于或等于此阈值，才会触发长按 Action，如空格划动
    longPressDelay: 0.3
    keyboardSwipe:
      # 中文 26 键滑动设置
      - keyboardType: chinese
        keys:
          - action: character(a)
            swipe:
              - direction: up
                action: character(`)
                processByRIME: true
                display: true
              - direction: down
                action: character(~)
                processByRIME: true
                display: false
          - action: character(b)
            swipe:
              - direction: up
                action: symbol(《》)
              - direction: down
                action: character(。)
                display: false
          - action: character(c)
            swipe:
              - direction: up
                action: character(.)
              - direction: down
                action: character(>)
                display: false
          - action: character(d)
            swipe:
              - direction: up
                action: character(=)
              - direction: down
                action: character(+)
                display: false
          - action: character(e)
            swipe:
              - direction: up
                action: character(3)
              # - direction: down
              #   action: character(#)
              #   display: false
              - direction: down
                action: keyboardType(alphabetic)
                display: false
          - action: character(f)
            swipe:
              - direction: up
                action: character([)
              - direction: down
                action: character({)
                display: false
          - action: character(g)
            swipe:
              - direction: up
                action: character(])
              - direction: down
                action: character(})
                display: false
          - action: character(h)
            swipe:
              - direction: up
                action: character(\\)
              - direction: down
                action: character(|)
                display: false
          - action: character(i)
            swipe:
              - direction: up
                action: character(8)
              - direction: down
                action: character(*)
                display: false
          - action: character(j)
            swipe:
              - direction: up
                action: character(/)
              - direction: down
                action: character(?)
                display: false
          - action: character(k)
            swipe:
              - direction: up
                action: character(;)
              - direction: down
                action: character(:)
                display: false
          - action: character(l)
            swipe:
              - direction: up
                action: character(')
              - direction: down
                action: character(")
                display: false
          - action: character(m)
            swipe:
              - direction: up
                action: shortCommand(#行尾)
              - direction: down
                action: character(、)
                display: false
          - action: character(n)
            swipe:
              - direction: up
                action: symbol(『』)
              - direction: down
                action: character(、)
                display: false
          - action: character(o)
            swipe:
              - direction: up
                action: character(9)
              - direction: down
                action: character(()
                display: false
          - action: character(p)
            swipe:
              - direction: up
                action: character(0)
              - direction: down
                action: character())
                display: false
          - action: character(q)
            swipe:
              - direction: up
                action: character(1)
              - direction: down
                action: character(!)
                display: false
          - action: character(r)
            swipe:
              - direction: up
                action: character(4)
              - direction: down
                action: character($)
                display: false
          - action: character(s)
            swipe:
              - direction: up
                action: character(-)
              - direction: down
                action: character(_)
                display: false
          - action: character(t)
            swipe:
              - direction: up
                action: character(5)
              - direction: down
                action: character(%)
                display: false
          - action: character(u)
            swipe:
              - direction: up
                action: character(7)
              - direction: down
                action: character(&)
                display: false
          - action: character(v)
            swipe:
              - direction: up
                action: symbol(“”)
              - direction: down
                action: character(，)
                display: false
          - action: character(w)
            swipe:
              - direction: up
                action: character(2)
              - direction: down
                action: character(@)
                display: false
          - action: character(x)
            swipe:
              - direction: up
                action: character(,)
              - direction: down
                action: character(<)
                display: false
          - action: character(y)
            swipe:
              - direction: up
                action: character(6)
              - direction: down
                action: character(^)
                display: false
          - action: character(z)
            swipe:
              - direction: up
                action: shortCommand(#行首)
              - direction: down
                action: symbol(‘’)
                display: false
          - action: space
            swipe:
              - direction: up
                action: shortCommand(#次选上屏)
                display: false
          - action: enter
            swipe:
              - direction: up
                action: shortCommand(#换行)
                display: false
          - action: backspace
            swipe:
              - direction: up
                action: shortCommand(#重输)
                display: false
          - action: keyboardType(numericNineGrid)
            swipe:
              - direction: up
                action: shortCommand(#上个输入方案)
                display: false
      # 中文九宫格滑动设置
      - keyboardType: chineseNineGrid
        keys:
          - action: chineseNineGrid(@/.)
            swipe:
              - direction: up
                action: character(1)
                display: true
          - action: chineseNineGrid(ABC)
            swipe:
              - direction: up
                action: character(2)
                display: true
          - action: chineseNineGrid(DEF)
            swipe:
              - direction: up
                action: character(3)
                display: true
          - action: chineseNineGrid(GHI)
            swipe:
              - direction: up
                action: character(4)
                display: true
          - action: chineseNineGrid(JKL)
            swipe:
              - direction: up
                action: character(5)
                display: true
          - action: chineseNineGrid(MNO)
            swipe:
              - direction: up
                action: character(6)
                display: true
          - action: chineseNineGrid(PQRS)
            swipe:
              - direction: up
                action: character(7)
                display: true
          - action: chineseNineGrid(TUV)
            swipe:
              - direction: up
                action: character(8)
                display: true
          - action: chineseNineGrid(WXYZ)
            swipe:
              - direction: up
                action: character(9)
                display: true
  # 自定义键盘布局
  # 布局文档说明文档：https://github.com/imfuxiao/Hamster/wiki/%E8%87%AA%E5%AE%9A%E4%B9%89%E9%94%AE%E7%9B%98%E5%B8%83%E5%B1%80
  keyboards:
    - name: "仓颉"
      rows:
        - keys:
            - action: character(q)
              label: "手"
              swipe:
                - direction: up
                  action: character(1)
                  display: true
            - action: character(w)
              label: "田"
              swipe:
                - direction: up
                  action: character(2)
                  display: true
            - action: character(e)
              label: "水"
              swipe:
                - direction: up
                  action: character(3)
                  display: true
            - action: character(r)
              label: "口"
              swipe:
                - direction: up
                  action: character(4)
                  display: true
            - action: character(t)
              label: "廿"
              swipe:
                - direction: up
                  action: character(5)
                  display: true
            - action: character(y)
              label: "卜"
              swipe:
                - direction: up
                  action: character(6)
                  display: true
            - action: character(u)
              label: "山"
              swipe:
                - direction: up
                  action: character(7)
                  display: true
            - action: character(i)
              label: "戈"
              swipe:
                - direction: up
                  action: character(8)
                  display: true
            - action: character(o)
              label: "人"
              swipe:
                - direction: up
                  action: character(9)
                  display: true
            - action: character(p)
              label: "心"
              swipe:
                - direction: up
                  action: character(0)
                  display: true
        - keys:
            - action: characterMargin(a)
              width: available
            - action: character(a)
              label: "日"
              swipe:
                - direction: up
                  action: character(!)
                  display: true
            - action: character(s)
              label: "尸"
              swipe:
                - direction: up
                  action: character(@)
                  display: true
            - action: character(d)
              label: "木"
              swipe:
                - direction: up
                  action: character(#)
                  display: true
            - action: character(f)
              label: "火"
              swipe:
                - direction: up
                  action: character($)
                  display: true
            - action: character(g)
              label: "土"
              swipe:
                - direction: up
                  action: character(%)
                  display: true
            - action: character(h)
              label: "竹"
              swipe:
                - direction: up
                  action: character(&)
                  display: true
            - action: character(j)
              label: "十"
              swipe:
                - direction: up
                  action: character(*)
                  display: true
            - action: character(k)
              label: "大"
              swipe:
                - direction: up
                  action: character(()
                  display: true
            - action: character(l)
              label: "中"
              swipe:
                - direction: up
                  action: character())
                  display: true
            - action: characterMargin(l)
              width: available
        - keys:
            - action: keyboardType(classifySymbolic)
              width: percentage(0.13)
            - action: characterMargin(z)
              width: available
            - action: character(z)
              label: "重"
              swipe:
                - direction: up
                  action: character(~)
                  display: true
            - action: character(x)
              label: "難"
              swipe:
                - direction: up
                  action: character(:)
                  display: true
            - action: character(c)
              label: "金"
              swipe:
                - direction: up
                  action: character(')
                  display: true
            - action: character(v)
              label: "女"
              swipe:
                - direction: up
                  action: character(_)
                  display: true
            - action: character(b)
              label: "月"
              swipe:
                - direction: up
                  action: character(,)
                  label: "，"
                  display: true
            - action: character(n)
              label: "弓"
              swipe:
                - direction: up
                  action: character(.)
                  label: "。"
                  display: true
            - action: character(m)
              label: "一"
              swipe:
                - direction: up
                  action: character(?)
                  label: "？"
                  display: true
            - action: characterMargin(m)
              width: available
            - action: backspace
              width: percentage(0.13)
              swipe:
                - direction: up
                  action: shortCommand(#重输)
        - keys:
            - action: keyboardType(numericNineGrid)
              width: percentage(0.19)
            - action: space
              width: available
              label:
                loadingText: "仓输入法"
                text: "空格"
            - action: character(,)
              label: "，"
              swipe:
                - direction: up
                  action: character(.)
                  label: "。"
                  display: true
            - action: keyboardType(alphabetic)
              width: percentage(0.13)
            - action: enter
              width: percentage(0.19)
    - name: "大千注音"
      buttonInsets: left(2),right(2),top(4),bottom(4)
      rowHeight: 43.2
      rows:
        - keys:
            - action: character(1)
              label: "ㄅ"
              swipe:
                - direction: up
                  action: character(1)
                  display: true
            - action: character(2)
              label: "ㄉ"
              swipe:
                - direction: up
                  action: character(2)
                  display: true
            - action: character(3)
              label: "ˇ"
              swipe:
                - direction: up
                  action: character(3)
                  display: true
            - action: character(4)
              label: "ˋ"
              swipe:
                - direction: up
                  action: character(4)
                  display: true
            - action: character(5)
              label: "ㄓ"
              swipe:
                - direction: up
                  action: character(5)
                  display: true
            - action: character(6)
              label: "ˊ"
              swipe:
                - direction: up
                  action: character(6)
                  display: true
            - action: character(7)
              label: "˙"
              swipe:
                - direction: up
                  action: character(7)
                  display: true
            - action: character(8)
              label: "ㄚ"
              swipe:
                - direction: up
                  action: character(8)
                  display: true
            - action: character(9)
              label: "ㄞ"
              swipe:
                - direction: up
                  action: character(9)
                  display: true
            - action: character(0)
              label: "ㄢ"
              swipe:
                - direction: up
                  action: character(0)
                  display: true
            - action: character(-)
              label: "ㄦ"
              swipe:
                - direction: up
                  action: character(-)
                  display: true
        - keys:
            - action: characterMargin(q)
              width: available
            - action: character(q)
              label: "ㄆ"
            - action: character(w)
              label: "ㄊ"
            - action: character(e)
              label: "ㄍ"
            - action: character(r)
              label: "ㄐ"
            - action: character(t)
              label: "ㄔ"
            - action: character(y)
              label: "ㄗ"
            - action: character(u)
              label: "ㄧ"
            - action: character(i)
              label: "ㄛ"
            - action: character(o)
              label: "ㄟ"
            - action: character(p)
              label: "ㄣ"
            - action: characterMargin(p)
              width: available
        - keys:
            - action: characterMargin(a)
              width: available
            - action: character(a)
              label: "ㄇ"
            - action: character(s)
              label: "ㄋ"
            - action: character(d)
              label: "ㄎ"
            - action: character(f)
              label: "ㄑ"
            - action: character(g)
              label: "ㄕ"
            - action: character(h)
              label: "ㄘ"
            - action: character(j)
              label: "ㄨ"
            - action: character(k)
              label: "ㄜ"
            - action: character(l)
              label: "ㄠ"
            - action: character(;)
              label: "ㄤ"
            - action: characterMargin(;)
              width: available
        - keys:
            - action: character(z)
              label: "ㄈ"
            - action: character(x)
              label: "ㄌ"
            - action: character(c)
              label: "ㄏ"
            - action: character(v)
              label: "ㄒ"
            - action: character(b)
              label: "ㄖ"
            - action: character(n)
              label: "ㄙ"
            - action: character(m)
              label: "ㄩ"
            - action: character(,)
              label: "ㄝ"
            - action: character(.)
              label: "ㄡ"
            - action: character(/)
              label: "ㄥ"
            - action: backspace
              swipe:
                - direction: up
                  action: shortCommand(#重输)
        - keys:
            - action: keyboardType(numericNineGrid)
              width: percentage(0.13)
            - action: keyboardType(classifySymbolic)
              width: percentage(0.13)
            - action: space
              width: available
              label:
                loadingText: "仓输入法"
                text: "空格"
            - action: character(，)
              label: "，"
              swipe:
                - direction: up
                  action: character(。)
                  display: true
            - action: keyboardType(alphabetic)
              width: percentage(0.13)
            - action: enter
              width: percentage(0.19)

  """
}
