#import "./lib.typ": *
#show: thmrules

#show: title.with(
  title: "2024数字逻辑答案",
  date: "2025-12-04",
  name: "潜伏",
)

= 简答题

== 1

$
  Y & = A B + C' D' \
    & = A B (C + C') (D + D') + (A + A') (B + B') C' D' \
    & = A B C D + A B C D' + A B C' D + A B C' D' + \
    & space space A' B' C' D' + A B' C' D' + A' B C' D' \
    & = sum m(0, 4, 8, 12, 13, 14, 15)
$
#v(10pt)
== 2

$
  because B' A + B D & = B' A + B D + A D \
         therefore Y & = B' A + B D + A D + A' D + C D E & = B' A + B D + D + D C E & = B' A + D
$
#v(10pt)
== 3
已知 $overline(Y(A,B,C,D)) = sum M(5, 7, 13, 15)$，求 $Y$。

$
  5: 0101 space space 7: 0111 \
  13: 1101 space space 15: 1111
$

画出卡诺图：

#align(center)[
  #table(
    columns: (auto, 2em, 2em, 2em, 2em),
    align: center + horizon,
    stroke: 0.5pt,
    inset: 5pt,
    table.header([#text(size: 0.8em)[$A B backslash C D$]], [00], [01], [11], [10]),
    [00], [1], [1], [1], [1],
    [01], [1], [0], [0], [1],
    [11], [1], [0], [0], [1],
    [10], [1], [1], [1], [1],
  )
]

$Y(A,B,C,D)=D'+B'$

#v(10pt)

== 4
当 $G_1 G_(2A) G_(2B) = 100$ 时，电路工作。

$
  overline(A_(12) + A_(14)) = 1 & arrow.double A_(12) = 0, A_(14) = 0 \
                     A_(13) = 0 & \
    overline(A_(15) A_(11)) = 0 & arrow.double A_(15) = 1, A_(11) = 1 \
                                & A_7 tilde A_0 "变化任意"
$

全地址范围：$A_(10) A_9 A_8$ 范围从 $000 tilde 111$

范围是 $8800"H" tilde 8"FFFH"$

(2) 对应设备 $A_(10) A_9 A_8 = C B A = 110$

范围 $8"E00H" ~ 8"EFFH"$

== 5
$ D C B A = 0000 $

$ because overline(L D) = overline(Q_d Q_c) $

当 $Q_d = 1, Q_c = 1$ 时，$overline(L D) = 0$  $overline(R D) = 1$

时钟 $Q_d Q_c Q_b Q_a = 0000$ 开始计数，一直计到 $1100$ 时 $overline(L D) = 0$。

在下一个上升沿后：$Q_d Q_c Q_b Q_a = D C B A = 0000$。

$ therefore $ 从 $0000$ 到 $1100$ 共 13 个状态，这是一个模13计数器

#v(10pt)

== 6
$Y_1 = overline(A) B, space Y_2 = A plus.o B, space Y_3 = A overline(B)$

#figure(
  align(center)[
    #table(
      columns: (2em, 2em, 2em, 2em, 2em),
      align: center,
      stroke: none,
      table.header([$A$], [$B$], [$Y_1$], [$Y_2$], [$Y_3$]),
      [0], [0], [0], [0], [0],
      [0], [1], [1], [1], [0],
      [1], [0], [0], [1], [1],
      [1], [1], [0], [0], [0],
    )
  ],
  caption: "真值表",
)


#pagebreak()

== 7

采用置数法进行设计

令 $D C B A = 1001$，当 $overline(L D) = 0$ 时 $D, C, B, A$ 会加载到输出端。

然后将输出 $C O$ 与 $overline(L D)$ 相连，中间加入一个非门。

其他门 $E P = E T = 1, space overline(R_D) = 1, space C P$ 接时钟信号。

计数器从 $1001$ 计数：$1001 arrow 1010 dots.h arrow 1111$。

当 $Q_d Q_c Q_b Q_a = 1111$ 时，$C O = 1, space overline(L D) = 0$。

在下一个时钟上升沿，$Q_d Q_c Q_b Q_a = 1001$。


== 8

$Q_1^(n+1) = D = 1$ 时钟上升沿变化

$Q_2^(n+1) = overline(Q_2^n)$ 时钟下降沿变化

$Q_3^(n+1) = J overline(Q_3^n) + overline(K) Q_3^n = overline(Q_3^n)$ 时钟上升沿变化

$Q_4^(n+1) = Q_4^n overline(Q_4^n) + Q_4^n Q_4^n = Q_4^n$ 时钟下降沿变化

#figure(
  align(center)[
    #image(
      "figures/变化图.png",
    )
  ],
  caption: "变化图",
)

== 9
4 种

- 0 低电压
- 1 高电平
- X 未定义
- Z 高阻态

#pagebreak()

== 10
当 $text("enable") = 100$ 的时候

#figure(
  align(center)[
    #table(
      columns: (3em, ..(1.5em,) * 8),
      align: center + horizon,
      stroke: none,
      table.header(
        [switch], [$Y_0$],
        [$Y_1$], [$Y_2$],
        [$Y_3$], [$Y_4$],
        [$Y_5$], [$Y_6$],
        [$Y_7$],
      ),
      [0], [0],
      [1], [1],
      [1], [1],
      [1], [1],
      [1], [1],
      [1], [0],
      [1], [1],
      [1], [1],
      [1], [1],
      [2], [1],
      [1], [0],
      [1], [1],
      [1], [1],
      [1], [3],
      [1], [1],
      [1], [0],
      [1], [1],
      [1], [1],
      [4], [1],
      [1], [1],
      [1], [0],
      [1], [1],
      [1], [5],
      [1], [1],
      [1], [1],
      [1], [0],
      [1], [1],
      [6], [1],
      [1], [1],
      [1], [1],
      [1], [0],
      [1], [7],
      [1], [1],
      [1], [1],
      [1], [1],
      [1], [0],
    )
  ],
)

这是一个 3-8 译码器

= 分析题

== 1

$
  Q_0^(n+1) & = overline(Q_0^n) \
  Q_1^(n+1) & = Q_0^n plus.circle Q_1^n plus.circle A \
          Y & = Q_0^n overline(A) Q_1^n + overline(Q_0^n) A overline(Q_1^n)
$

#figure(
  align(center)[
    #table(
      columns: (2em, 3em, 3em, 3.5em, 3.5em, 2em),
      align: center,
      stroke: none,
      table.header([$A$], [$Q_1^n$], [$Q_0^n$], [$Q_1^(n+1)$], [$Q_0^(n+1)$], [$Y$]),
      [0], [0], [0], [0], [1], [0],
      [0], [1], [0], [1], [1], [0],
      [0], [0], [1], [1], [0], [0],
      [0], [1], [1], [0], [0], [1],
      [1], [0], [0], [1], [1], [1],
      [1], [1], [0], [0], [1], [0],
      [1], [0], [1], [0], [0], [0],
      [1], [1], [1], [1], [0], [0],
    )
  ],
  caption: "状态转换表",
)

状态转换图:略

逻辑功能是 A=0 执行加法，A=1 执行减法。

== 2

$
  Q_0 = Q_1 = Q_2 = 0 \
  J_0 = X, space K_0 = overline(X) \
  J_1 = Q_0^n, space K_1 = overline(Q_0^n) \
  J_2 = Q_1^n, space K_2 = overline(Q_1^n) \
  Q_0^(n+1) = X \
  Q_1^(n+1) = Q_0^n \
  Q_2^(n+1) = Q_1^n \
  {Q_2^(n+1) Q_1^(n+1) Q_0^(n+1)} <== {Q_1^n, Q_0^n, X}
$

$000 ("输入" X=1)-> 001 ("输入"X=0) -> 010 ("输入"X=1) -> 101 ("输入"X=0) -> 010 ("输入"X=0)-> 100 ("输入"X=1) -> 001$

功能是3位左移移位寄存器

= 设计题

== 1

$
  & A plus.circle B =1 \
  & C=1 \
  & Y=(A plus.circle B) C \
$

设计电路图:略

== 2

(1) 需要用到三个触发器

(2)

$000 -> 100 -> 001 -> 110 -> 101 -> 010 ->000$

#figure(
  align(center)[
    #table(
      columns: (2em, 2em, 2em, 3em, 3em, 3em, 2em, 2em, 2em, 2em, 2em, 2em),
      align: center,
      stroke: none,
      table.header(
        [$Q_0^n$],
        [$Q_1^n$],
        [$Q_2^n$],
        [$Q_0^(n+1)$],
        [$Q_1^(n+1)$],
        [$Q_2^(n+1)$],
        [$J_0$],
        [$K_0$],
        [$J_1$],
        [$K_1$],
        [$J_2$],
        [$K_2$],
      ),
      [0], [0], [0], [1], [0], [0], [1], [X], [0], [X], [0], [X],
      [0], [0], [1], [1], [1], [0], [1], [X], [1], [X], [X], [1],
      [0], [1], [0], [0], [0], [0], [0], [X], [X], [1], [0], [X],
      [0], [1], [1], [X], [X], [X], [X], [X], [X], [X], [X], [X],
      [1], [0], [0], [0], [0], [1], [X], [1], [0], [X], [1], [X],
      [1], [0], [1], [0], [1], [0], [X], [1], [1], [X], [X], [1],
      [1], [1], [0], [1], [0], [1], [X], [0], [X], [1], [1], [X],
      [1], [1], [1], [X], [X], [X], [X], [X], [X], [X], [X], [X]
    )
  ],
  caption: "状态转换与激励表",
)

#grid(
  columns: (1fr, 1fr),
  figure(
    align(center)[
      #table(
        columns: (auto, auto, auto, auto, auto),
        align: center,
        table.header([$Q_0^n \\ Q_1^n Q_2^n$], [00], [01], [11], [10]),
        [0], [1], [1], [X], [0],
        [1], [X], [X], [X], [X],
      )
    ],
    caption: [$J_0 = overline(Q_1^n)$],
  ),
  figure(
    align(center)[
      #table(
        columns: (auto, auto, auto, auto, auto),
        align: center,
        table.header([$Q_0^n \\ Q_1^n Q_2^n$], [00], [01], [11], [10]),
        [0], [X], [X], [X], [0],
        [1], [1], [1], [X], [X],
      )
    ],
    caption: [$K_0 = Q_1^n$],
  ),

  figure(
    align(center)[
      #table(
        columns: (auto, auto, auto, auto, auto),
        align: center,
        table.header([$Q_0^n \\ Q_1^n Q_2^n$], [00], [01], [11], [10]),
        [0], [0], [1], [X], [X],
        [1], [0], [1], [X], [X],
      )
    ],
    caption: [$J_1 = Q_2^n$],
  ),
  figure(
    align(center)[
      #table(
        columns: (auto, auto, auto, auto, auto),
        align: center,
        table.header([$Q_0^n \\ Q_1^n Q_2^n$], [00], [01], [11], [10]),
        [0], [X], [X], [X], [1],
        [1], [X], [X], [X], [1],
      )
    ],
    caption: [$K_1 = 1$],
  ),

  figure(
    align(center)[
      #table(
        columns: (auto, auto, auto, auto, auto),
        align: center,
        table.header([$Q_0^n \\ Q_1^n Q_2^n$], [00], [01], [11], [10]),
        [0], [0], [X], [X], [0],
        [1], [1], [X], [X], [1],
      )
    ],
    caption: [$J_2 = Q_0^n$],
  ),
  figure(
    align(center)[
      #table(
        columns: (auto, auto, auto, auto, auto),
        align: center,
        table.header([$Q_0^n \\ Q_1^n Q_2^n$], [00], [01], [11], [10]),
        [0], [X], [1], [X], [X],
        [1], [X], [1], [X], [X],
      )
    ],
    caption: [$K_2 = 1$],
  ),
)

