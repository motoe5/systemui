.class Lcom/android/systemui/qs/QSDetailItems$Adapter;
.super Landroid/widget/BaseAdapter;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetailItems;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Adapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetailItems;
    .param p2, "-this1"    # Lcom/android/systemui/qs/QSDetailItems$Adapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get2(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get2(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get2(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 183
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/qs/QSDetailItems;->-get2(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v22

    aget-object v14, v22, p1

    .line 189
    .local v14, "item":Lcom/android/systemui/qs/QSDetailItems$Item;
    if-nez p2, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v22

    const v23, 0x7f0d00d9

    .line 191
    const/16 v24, 0x0

    .line 190
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p3

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 193
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/qs/QSDetailItems;->-get3(Lcom/android/systemui/qs/QSDetailItems;)Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v22, 0x0

    :goto_0
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    const v22, 0x1020006

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 195
    .local v15, "iv":Landroid/widget/ImageView;
    iget v0, v14, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    invoke-virtual {v15}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewOverlay;->clear()V

    .line 197
    iget-object v0, v14, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 198
    iget-object v0, v14, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/qs/QSDetailItems;->-get4(Lcom/android/systemui/qs/QSDetailItems;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/systemui/qs/QSDetailItems;->-get4(Lcom/android/systemui/qs/QSDetailItems;)I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 199
    invoke-virtual {v15}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v22

    iget-object v0, v14, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_1
    instance-of v0, v14, Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object v10, v14

    .line 203
    check-cast v10, Lcom/android/systemui/qs/tiles/DataTile$DataItem;

    .line 204
    .local v10, "dataItem":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    const v22, 0x7f0a02df

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewStub;

    .line 205
    .local v21, "vs":Landroid/view/ViewStub;
    const v22, 0x7f0a0076

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 206
    .local v7, "cellularData":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_4

    move-object v12, v7

    .line 207
    .local v12, "fl":Landroid/widget/FrameLayout;
    :goto_1
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 210
    const v22, 0x7f0a01a9

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 211
    .local v9, "data":Landroid/widget/ImageView;
    iget v0, v10, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->dataTypeIconId:I

    move/from16 v22, v0

    if-lez v22, :cond_5

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v22

    iget v0, v10, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->dataTypeIconId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    :goto_2
    const v22, 0x7f0a01a6

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 218
    .local v17, "signal":Landroid/widget/ImageView;
    iget v0, v10, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->mobileSignalIconId:I

    move/from16 v22, v0

    if-lez v22, :cond_8

    .line 220
    iget-boolean v0, v10, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->showSeparatedSignalBars:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v22

    iget v0, v10, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->mobileSignalIconId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :goto_3
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    :goto_4
    const v22, 0x7f0a01a4

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 235
    .local v16, "roam":Landroid/widget/ImageView;
    iget v0, v10, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->mobileRoamingIconId:I

    move/from16 v22, v0

    if-lez v22, :cond_9

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v22

    iget v0, v10, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->mobileRoamingIconId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    :goto_5
    const v22, 0x7f0a019f

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 244
    .local v5, "activityIn":Landroid/widget/ImageView;
    iget-object v0, v10, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/DataTile$DataTileState;->activityIn:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    const v22, 0x7f0a01a0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 246
    .local v6, "activityOut":Landroid/widget/ImageView;
    iget-object v0, v10, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->dataTileState:Lcom/android/systemui/qs/tiles/DataTile$DataTileState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/DataTile$DataTileState;->activityOut:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    .end local v5    # "activityIn":Landroid/widget/ImageView;
    .end local v6    # "activityOut":Landroid/widget/ImageView;
    .end local v7    # "cellularData":Landroid/widget/FrameLayout;
    .end local v9    # "data":Landroid/widget/ImageView;
    .end local v10    # "dataItem":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    .end local v12    # "fl":Landroid/widget/FrameLayout;
    .end local v16    # "roam":Landroid/widget/ImageView;
    .end local v17    # "signal":Landroid/widget/ImageView;
    .end local v21    # "vs":Landroid/view/ViewStub;
    :cond_2
    const v22, 0x1020016

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 251
    .local v19, "title":Landroid/widget/TextView;
    iget-object v0, v14, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const v22, 0x1020010

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 253
    .local v18, "summary":Landroid/widget/TextView;
    iget-object v0, v14, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    xor-int/lit8 v20, v22, 0x1

    .line 254
    .local v20, "twoLines":Z
    if-eqz v20, :cond_c

    const/16 v22, 0x1

    :goto_8
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 255
    if-eqz v20, :cond_d

    const/16 v22, 0x0

    :goto_9
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    if-eqz v20, :cond_e

    iget-object v0, v14, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    :goto_a
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    new-instance v22, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;-><init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const v22, 0x1020008

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 267
    .local v13, "icon2":Landroid/widget/ImageView;
    iget-boolean v0, v14, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 268
    const v22, 0x7f0801b5

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 271
    new-instance v22, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;-><init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    :goto_b
    return-object p2

    .line 193
    .end local v13    # "icon2":Landroid/widget/ImageView;
    .end local v15    # "iv":Landroid/widget/ImageView;
    .end local v18    # "summary":Landroid/widget/TextView;
    .end local v19    # "title":Landroid/widget/TextView;
    .end local v20    # "twoLines":Z
    :cond_3
    const/16 v22, 0x4

    goto/16 :goto_0

    .line 206
    .restart local v7    # "cellularData":Landroid/widget/FrameLayout;
    .restart local v10    # "dataItem":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    .restart local v15    # "iv":Landroid/widget/ImageView;
    .restart local v21    # "vs":Landroid/view/ViewStub;
    :cond_4
    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .restart local v12    # "fl":Landroid/widget/FrameLayout;
    goto/16 :goto_1

    .line 215
    .restart local v9    # "data":Landroid/widget/ImageView;
    :cond_5
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 223
    .restart local v17    # "signal":Landroid/widget/ImageView;
    :cond_6
    new-instance v11, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    .line 224
    .local v11, "drawable":Lcom/android/systemui/statusbar/phone/SignalDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v22

    const v23, 0x1010030

    invoke-static/range {v22 .. v23}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v22

    const/high16 v23, -0x1000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/4 v8, 0x1

    .line 225
    .local v8, "dark":I
    :goto_c
    int-to-float v0, v8

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    .line 226
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    iget v0, v10, Lcom/android/systemui/qs/tiles/DataTile$DataItem;->mobileSignalIconId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_3

    .line 224
    .end local v8    # "dark":I
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "dark":I
    goto :goto_c

    .line 232
    .end local v8    # "dark":I
    .end local v11    # "drawable":Lcom/android/systemui/statusbar/phone/SignalDrawable;
    :cond_8
    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 239
    .restart local v16    # "roam":Landroid/widget/ImageView;
    :cond_9
    const/16 v22, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 244
    .restart local v5    # "activityIn":Landroid/widget/ImageView;
    :cond_a
    const/16 v22, 0x8

    goto/16 :goto_6

    .line 246
    .restart local v6    # "activityOut":Landroid/widget/ImageView;
    :cond_b
    const/16 v22, 0x8

    goto/16 :goto_7

    .line 254
    .end local v5    # "activityIn":Landroid/widget/ImageView;
    .end local v6    # "activityOut":Landroid/widget/ImageView;
    .end local v7    # "cellularData":Landroid/widget/FrameLayout;
    .end local v9    # "data":Landroid/widget/ImageView;
    .end local v10    # "dataItem":Lcom/android/systemui/qs/tiles/DataTile$DataItem;
    .end local v12    # "fl":Landroid/widget/FrameLayout;
    .end local v16    # "roam":Landroid/widget/ImageView;
    .end local v17    # "signal":Landroid/widget/ImageView;
    .end local v21    # "vs":Landroid/view/ViewStub;
    .restart local v18    # "summary":Landroid/widget/TextView;
    .restart local v19    # "title":Landroid/widget/TextView;
    .restart local v20    # "twoLines":Z
    :cond_c
    const/16 v22, 0x2

    goto/16 :goto_8

    .line 255
    :cond_d
    const/16 v22, 0x8

    goto/16 :goto_9

    .line 256
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_a

    .line 279
    .restart local v13    # "icon2":Landroid/widget/ImageView;
    :cond_f
    iget v0, v14, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_10

    .line 280
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget v0, v14, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_b

    .line 284
    :cond_10
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b
.end method
