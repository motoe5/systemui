.class public Lcom/android/systemui/qs/tiles/DataUsageDetailView;
.super Landroid/widget/LinearLayout;
.source "DataUsageDetailView.java"


# instance fields
.field private final FORMAT:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    .line 49
    return-void
.end method

.method private formatBytes(J)Ljava/lang/String;
    .locals 11
    .param p1, "bytes"    # J

    .prologue
    .line 163
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 166
    .local v0, "b":J
    long-to-double v6, v0

    const-wide/high16 v8, 0x4199000000000000L    # 1.048576E8

    cmpl-double v3, v6, v8

    if-lez v3, :cond_0

    .line 167
    long-to-double v6, v0

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    div-double v4, v6, v8

    .line 168
    .local v4, "val":D
    const v2, 0x1040245

    .line 176
    .local v2, "suffix":I
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    const-wide/16 v8, 0x0

    cmp-long v3, p1, v8

    if-gez v3, :cond_2

    const/4 v3, -0x1

    :goto_1
    int-to-double v8, v3

    mul-double/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 169
    .end local v2    # "suffix":I
    .end local v4    # "val":D
    :cond_0
    long-to-double v6, v0

    const-wide/high16 v8, 0x40f9000000000000L    # 102400.0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_1

    .line 170
    long-to-double v6, v0

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double v4, v6, v8

    .line 171
    .restart local v4    # "val":D
    const v2, 0x10403a0

    .restart local v2    # "suffix":I
    goto :goto_0

    .line 173
    .end local v2    # "suffix":I
    .end local v4    # "val":D
    :cond_1
    long-to-double v6, v0

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double v4, v6, v8

    .line 174
    .restart local v4    # "val":D
    const v2, 0x10402eb

    .restart local v2    # "suffix":I
    goto :goto_0

    .line 176
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bind(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 24
    .param p1, "info"    # Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 69
    .local v17, "res":Landroid/content/res/Resources;
    const/16 v23, 0x0

    .line 71
    .local v23, "usageColor":I
    const/4 v2, 0x0

    .line 73
    .local v2, "bottom":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DataUsageUtils;->isFeature4232DataUsageUnitsAvailable(Landroid/content/Context;)Z

    move-result v15

    .line 74
    .local v15, "isFeature4232DataUsageUnitsAvailable":Z
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 76
    :cond_0
    const v20, 0x7f1103cc

    .line 77
    .local v20, "titleId":I
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 79
    .local v10, "bytes":J
    if-eqz v15, :cond_4

    .line 80
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v5, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 80
    const v5, 0x7f1103ce

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 127
    .end local v2    # "bottom":Ljava/lang/String;
    .local v21, "top":Ljava/lang/String;
    :goto_0
    if-nez v23, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v23

    .line 131
    :cond_1
    const v4, 0x1020016

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 132
    .local v19, "title":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 133
    const v4, 0x7f0a02d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 135
    .local v22, "usage":Landroid/widget/TextView;
    if-eqz v15, :cond_9

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v10, v11}, Lcom/android/systemui/qs/tiles/DataUsageUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_1
    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    const v4, 0x7f0a02d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/DataUsageGraph;

    .line 143
    .local v3, "graph":Lcom/android/systemui/qs/DataUsageGraph;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/qs/DataUsageGraph;->setLevels(JJJ)V

    .line 144
    const v4, 0x7f0a02cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 145
    .local v12, "carrier":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const v4, 0x7f0a02d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 147
    .local v16, "period":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v4, 0x7f0a02d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 149
    .local v14, "infoTop":Landroid/widget/TextView;
    if-eqz v21, :cond_a

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v4, 0x7f0a02d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 152
    .local v13, "infoBottom":Landroid/widget/TextView;
    if-eqz v2, :cond_b

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_c

    :cond_2
    const/16 v18, 0x1

    .line 155
    .local v18, "showLevel":Z
    :goto_4
    if-eqz v18, :cond_d

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/DataUsageGraph;->setVisibility(I)V

    .line 156
    if-nez v18, :cond_3

    .line 157
    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :cond_3
    return-void

    .line 83
    .end local v3    # "graph":Lcom/android/systemui/qs/DataUsageGraph;
    .end local v12    # "carrier":Landroid/widget/TextView;
    .end local v13    # "infoBottom":Landroid/widget/TextView;
    .end local v14    # "infoTop":Landroid/widget/TextView;
    .end local v16    # "period":Landroid/widget/TextView;
    .end local v18    # "showLevel":Z
    .end local v19    # "title":Landroid/widget/TextView;
    .end local v21    # "top":Ljava/lang/String;
    .end local v22    # "usage":Landroid/widget/TextView;
    .restart local v2    # "bottom":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 84
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 83
    const v5, 0x7f1103ce

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "top":Ljava/lang/String;
    goto/16 :goto_0

    .line 87
    .end local v10    # "bytes":J
    .end local v20    # "titleId":I
    .end local v21    # "top":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_7

    .line 89
    const v20, 0x7f1103d0

    .line 90
    .restart local v20    # "titleId":I
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sub-long v10, v4, v6

    .line 92
    .restart local v10    # "bytes":J
    if-eqz v15, :cond_6

    .line 93
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v5, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 93
    const v5, 0x7f1103cd

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 95
    .restart local v21    # "top":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v5, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 95
    const v5, 0x7f1103cb

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "bottom":Ljava/lang/String;
    goto/16 :goto_0

    .line 98
    .end local v21    # "top":Ljava/lang/String;
    .local v2, "bottom":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 99
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 98
    const v5, 0x7f1103cd

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 100
    .restart local v21    # "top":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 101
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 100
    const v5, 0x7f1103cb

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "bottom":Ljava/lang/String;
    goto/16 :goto_0

    .line 106
    .end local v10    # "bytes":J
    .end local v20    # "titleId":I
    .end local v21    # "top":Ljava/lang/String;
    .local v2, "bottom":Ljava/lang/String;
    :cond_7
    const v20, 0x7f1103cf

    .line 107
    .restart local v20    # "titleId":I
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    sub-long v10, v4, v6

    .line 109
    .restart local v10    # "bytes":J
    if-eqz v15, :cond_8

    .line 110
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v5, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 110
    const v5, 0x7f1103cd

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 112
    .restart local v21    # "top":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v5, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 112
    const v5, 0x7f1103cb

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "bottom":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    const v5, 0x1010543

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v23

    goto/16 :goto_0

    .line 115
    .end local v21    # "top":Ljava/lang/String;
    .local v2, "bottom":Ljava/lang/String;
    :cond_8
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 116
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 115
    const v5, 0x7f1103cd

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 117
    .restart local v21    # "top":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 118
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 117
    const v5, 0x7f1103cb

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "bottom":Ljava/lang/String;
    goto :goto_6

    .line 138
    .end local v2    # "bottom":Ljava/lang/String;
    .restart local v19    # "title":Landroid/widget/TextView;
    .restart local v22    # "usage":Landroid/widget/TextView;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 149
    .restart local v3    # "graph":Lcom/android/systemui/qs/DataUsageGraph;
    .restart local v12    # "carrier":Landroid/widget/TextView;
    .restart local v14    # "infoTop":Landroid/widget/TextView;
    .restart local v16    # "period":Landroid/widget/TextView;
    :cond_a
    const/16 v4, 0x8

    goto/16 :goto_2

    .line 152
    .restart local v13    # "infoBottom":Landroid/widget/TextView;
    :cond_b
    const/16 v4, 0x8

    goto/16 :goto_3

    .line 154
    :cond_c
    const/16 v18, 0x0

    .restart local v18    # "showLevel":Z
    goto/16 :goto_4

    .line 155
    :cond_d
    const/16 v4, 0x8

    goto/16 :goto_5
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v2, 0x7f070216

    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    const v0, 0x1020016

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 55
    const v0, 0x7f0a02d4

    const v1, 0x7f070217

    invoke-static {p0, v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 56
    const v0, 0x7f0a02cf

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 58
    const v0, 0x7f0a02d2

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 60
    const v0, 0x7f0a02d3

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 61
    const v0, 0x7f0a02d1

    invoke-static {p0, v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 63
    return-void
.end method
