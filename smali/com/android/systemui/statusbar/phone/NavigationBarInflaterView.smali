.class public Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarInflaterView.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<",
        "Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private isRot0Landscape:Z

.field private mAlternativeOrder:Z

.field private mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLayout:Ljava/lang/String;

.field protected mLandscapeInflater:Landroid/view/LayoutInflater;

.field private mLastLandscape:Landroid/view/View;

.field private mLastPortrait:Landroid/view/View;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected mRot0:Landroid/widget/FrameLayout;

.field protected mRot90:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->createInflaters()V

    .line 101
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 100
    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 102
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    .line 103
    .local v1, "displayMode":Landroid/view/Display$Mode;
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    .line 104
    return-void

    .line 103
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "buttonDispatcher"    # Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 209
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 210
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 205
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 215
    :cond_2
    return-void
.end method

.method private addGravitySpacer(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v3, 0x0

    .line 252
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    return-void
.end method

.method private addToDispatchers(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 400
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v4, :cond_0

    .line 401
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 402
    .local v2, "indexOfKey":I
    if-ltz v2, :cond_1

    .line 403
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 412
    .end local v2    # "indexOfKey":I
    :cond_0
    return-void

    .line 404
    .restart local v2    # "indexOfKey":I
    :cond_1
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 405
    check-cast v3, Landroid/view/ViewGroup;

    .line 406
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 407
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 408
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private clearAllChildren(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 428
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    return-void
.end method

.method private clearViews()V
    .locals 3

    .prologue
    const v2, 0x7f0a01ce

    .line 417
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->clear()V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    .line 423
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    .line 424
    return-void
.end method

.method private createInflaters()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 108
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 109
    .local v0, "landscape":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 110
    const/4 v1, 0x2

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    .line 112
    return-void
.end method

.method private createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Z)Landroid/view/View;
    .locals 15
    .param p1, "buttonSpec"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
    .param p4, "landscape"    # Z

    .prologue
    .line 296
    const/4 v11, 0x0

    .line 297
    .local v11, "v":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "button":Ljava/lang/String;
    const-string/jumbo v12, "left"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 299
    const-class v12, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v13, "sysui_nav_bar_left"

    const-string/jumbo v14, "space"

    invoke-virtual {v12, v13, v14}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    :cond_0
    :goto_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v11    # "v":Landroid/view/View;
    .local v9, "provider$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    .line 307
    .local v8, "provider":Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v8, v0, v1}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;->createView(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 308
    .local v11, "v":Landroid/view/View;
    if-eqz v11, :cond_1

    return-object v11

    .line 301
    .end local v8    # "provider":Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;
    .end local v9    # "provider$iterator":Ljava/util/Iterator;
    .local v11, "v":Landroid/view/View;
    :cond_2
    const-string/jumbo v12, "right"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 302
    const-class v12, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v13, "sysui_nav_bar_right"

    const-string/jumbo v14, "menu_ime"

    invoke-virtual {v12, v13, v14}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 310
    .end local v11    # "v":Landroid/view/View;
    .restart local v9    # "provider$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v12, "home"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 311
    const v12, 0x7f0d0032

    const/4 v13, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 362
    :cond_4
    :goto_1
    return-object v11

    .line 312
    :cond_5
    const-string/jumbo v12, "back"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 313
    const v12, 0x7f0d001d

    const/4 v13, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .local v11, "v":Landroid/view/View;
    goto :goto_1

    .line 314
    .end local v11    # "v":Landroid/view/View;
    :cond_6
    const-string/jumbo v12, "recent"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 315
    const v12, 0x7f0d00e9

    const/4 v13, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .restart local v11    # "v":Landroid/view/View;
    goto :goto_1

    .line 316
    .end local v11    # "v":Landroid/view/View;
    :cond_7
    const-string/jumbo v12, "menu_ime"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 317
    const v12, 0x7f0d008d

    const/4 v13, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .restart local v11    # "v":Landroid/view/View;
    goto :goto_1

    .line 318
    .end local v11    # "v":Landroid/view/View;
    :cond_8
    const-string/jumbo v12, "space"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 319
    const v12, 0x7f0d009b

    const/4 v13, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .restart local v11    # "v":Landroid/view/View;
    goto :goto_1

    .line 320
    .end local v11    # "v":Landroid/view/View;
    :cond_9
    const-string/jumbo v12, "clipboard"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 321
    const v12, 0x7f0d0025

    const/4 v13, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .restart local v11    # "v":Landroid/view/View;
    goto :goto_1

    .line 322
    .end local v11    # "v":Landroid/view/View;
    :cond_a
    const-string/jumbo v12, "key"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 323
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 324
    .local v10, "uri":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    move-result v3

    .line 325
    .local v3, "code":I
    const v12, 0x7f0d0027

    const/4 v13, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .restart local v11    # "v":Landroid/view/View;
    move-object v12, v11

    .line 326
    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v12, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setCode(I)V

    .line 327
    if-eqz v10, :cond_4

    .line 328
    const-string/jumbo v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v10, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 332
    .local v6, "id":I
    if-lez v6, :cond_b

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, "pkg":Ljava/lang/String;
    move-object v0, v11

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-object v12, v0

    invoke-static {v7, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 336
    .end local v7    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 337
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_1

    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_b
    move-object v12, v11

    .line 340
    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v10}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V

    goto/16 :goto_1

    .line 342
    .end local v6    # "id":I
    :cond_c
    const-string/jumbo v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 349
    const-string/jumbo v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "iconInfo":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 351
    .local v7, "pkg":Ljava/lang/String;
    if-eqz v5, :cond_4

    array-length v12, v5

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 352
    const/4 v12, 0x0

    aget-object v7, v5, v12

    .line 353
    .local v7, "pkg":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 354
    .restart local v6    # "id":I
    if-lez v6, :cond_4

    move-object v12, v11

    .line 355
    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v7, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V

    goto/16 :goto_1
.end method

.method public static extractButton(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "buttonSpec"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string/jumbo v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    return-object p0

    .line 396
    :cond_0
    const-string/jumbo v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "buttonSpec"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string/jumbo v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    const/4 v2, 0x0

    return-object v2

    .line 369
    :cond_0
    const-string/jumbo v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 370
    .local v0, "start":I
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "subStr":Ljava/lang/String;
    return-object v1
.end method

.method public static extractKeycode(Ljava/lang/String;)I
    .locals 4
    .param p0, "buttonSpec"    # Ljava/lang/String;

    .prologue
    .line 375
    const-string/jumbo v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    const/4 v2, 0x1

    return v2

    .line 378
    :cond_0
    const-string/jumbo v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 379
    .local v0, "start":I
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "subStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static extractSize(Ljava/lang/String;)F
    .locals 4
    .param p0, "buttonSpec"    # Ljava/lang/String;

    .prologue
    .line 384
    const-string/jumbo v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 387
    :cond_0
    const-string/jumbo v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, "sizeStart":I
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "]"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "sizeStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    return v2
.end method

.method private inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p1, "buttons"    # [Ljava/lang/String;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "landscape"    # Z

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 257
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method private inflateChildren()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->removeAllViews()V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00a0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0232

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addView(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00a1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0233

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addView(Landroid/view/View;)V

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder()V

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRotatedViews()V

    .line 135
    :cond_0
    return-void
.end method

.method private initiallyFill(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 3
    .param p1, "buttonDispatcher"    # Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .prologue
    const v2, 0x7f0a00ce

    const v1, 0x7f0a0078

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 202
    return-void
.end method

.method private updateAlternativeOrder()V
    .locals 3

    .prologue
    const v2, 0x7f0a00ce

    const v1, 0x7f0a0078

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method private updateAlternativeOrder(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;

    if-eqz v0, :cond_0

    .line 193
    check-cast p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;

    .end local p1    # "v":Landroid/view/View;
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->setAlternativeOrder(Z)V

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDefaultLayout()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    const v1, 0x7f110187

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 6
    .param p1, "buttonSpec"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "landscape"    # Z

    .prologue
    const/4 v5, 0x0

    .line 271
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    .line 272
    .local v0, "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractSize(Ljava/lang/String;)F

    move-result v3

    .line 273
    .local v3, "size":F
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Z)Landroid/view/View;

    move-result-object v4

    .line 274
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_1

    return-object v5

    .line 271
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "size":F
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 276
    .restart local v3    # "size":F
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_2

    .line 277
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 278
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 280
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 281
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    .line 282
    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    .line 283
    .local v1, "lastView":Landroid/view/View;
    :goto_1
    if-eqz v1, :cond_3

    .line 284
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 286
    :cond_3
    if-eqz p3, :cond_5

    .line 287
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    .line 291
    :goto_2
    return-object v4

    .line 282
    .end local v1    # "lastView":Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .restart local v1    # "lastView":Landroid/view/View;
    goto :goto_1

    .line 289
    :cond_5
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    goto :goto_2
.end method

.method protected inflateLayout(Ljava/lang/String;)V
    .locals 13
    .param p1, "newLayout"    # Ljava/lang/String;

    .prologue
    const v12, 0x7f0a0078

    const/4 v11, 0x0

    const v10, 0x7f0a00ce

    .line 218
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    .line 219
    if-nez p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    .line 222
    :cond_0
    const-string/jumbo v8, ";"

    const/4 v9, 0x3

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "sets":[Ljava/lang/String;
    aget-object v8, v4, v11

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "start":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "center":[Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v8, v4, v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "end":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    invoke-direct {p0, v5, v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 228
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    xor-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v5, v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 230
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    invoke-direct {p0, v1, v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 231
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    xor-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v1, v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 233
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 234
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 236
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    invoke-direct {p0, v2, v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 237
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    xor-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v2, v8, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 240
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v8, :cond_2

    .line 241
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 242
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 243
    .local v0, "buttonDispatcher":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getViews()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "view$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 244
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->refreshCurrentTranslation(Landroid/view/View;)V

    goto :goto_1

    .line 241
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 249
    .end local v0    # "buttonDispatcher":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .end local v3    # "i":I
    .end local v7    # "view$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 143
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 144
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_nav_bar"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysui_nav_bar_left"

    aput-object v2, v1, v4

    .line 145
    const-string/jumbo v2, "sysui_nav_bar_right"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 144
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 146
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    .line 147
    const-class v1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    .line 146
    invoke-interface {v0, p0, v1, v4}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 148
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 152
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 153
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 154
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 155
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateChildren()V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 432
    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;Landroid/content/Context;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .prologue
    .line 439
    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 442
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string/jumbo v0, "sysui_nav_bar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 162
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string/jumbo v0, "sysui_nav_bar_left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "sysui_nav_bar_right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAlternativeOrder(Z)V
    .locals 1
    .param p1, "alternativeOrder"    # Z

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    if-eq p1, v0, :cond_0

    .line 179
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder()V

    .line 182
    :cond_0
    return-void
.end method

.method public setButtonDispatchers(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "buttonDisatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/statusbar/phone/ButtonDispatcher;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 173
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->initiallyFill(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method
