.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$SettingObserver;
    }
.end annotation


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryPercentView:Landroid/widget/TextView;

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

.field private mForceShowPercent:Z

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

.field private final mSlotBattery:Ljava/lang/String;

.field private final mSupport2018StatusbarFeatureNormal:Z

.field private mTextColor:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/systemui/BatteryMeterView;->setOrientation(I)V

    .line 96
    const v7, 0x800013

    invoke-virtual {p0, v7}, Lcom/android/systemui/BatteryMeterView;->setGravity(I)V

    .line 98
    sget-object v7, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    .line 99
    const/4 v8, 0x0

    .line 98
    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "atts":Landroid/content/res/TypedArray;
    const v7, 0x7f060088

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 100
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 102
    .local v3, "frameColor":I
    new-instance v7, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-direct {v7, p1, v3}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    new-instance v7, Lcom/android/systemui/BatteryMeterView$SettingObserver;

    new-instance v8, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v7, p0, v8}, Lcom/android/systemui/BatteryMeterView$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 108
    const v7, 0x1040606

    .line 107
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    .line 109
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    .line 110
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050053

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 113
    iput-boolean v7, p0, Lcom/android/systemui/BatteryMeterView;->mSupport2018StatusbarFeatureNormal:Z

    .line 118
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    iget-boolean v8, p0, Lcom/android/systemui/BatteryMeterView;->mSupport2018StatusbarFeatureNormal:Z

    invoke-virtual {v7, v8}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setSupport2018Statusbar(Z)V

    .line 119
    iget-boolean v7, p0, Lcom/android/systemui/BatteryMeterView;->mSupport2018StatusbarFeatureNormal:Z

    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702fa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 121
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 126
    .local v6, "width":I
    :goto_0
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 130
    .local v5, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070059

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 129
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 131
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v7, v5}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 135
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 136
    const v7, 0x7f040085

    invoke-static {p1, v7}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v7

    .line 135
    invoke-direct {v1, p1, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 137
    .local v1, "dualToneDarkTheme":Landroid/content/Context;
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 138
    const v7, 0x7f040138

    invoke-static {p1, v7}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v7

    .line 137
    invoke-direct {v2, p1, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 139
    .local v2, "dualToneLightTheme":Landroid/content/Context;
    const v7, 0x7f04003f

    invoke-static {v1, v7}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    .line 140
    const v7, 0x7f0400c5

    invoke-static {v1, v7}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    .line 141
    const v7, 0x7f04003f

    invoke-static {v2, v7}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    .line 142
    const v7, 0x7f0400c5

    invoke-static {v2, v7}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    .line 145
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 146
    return-void

    .line 123
    .end local v1    # "dualToneDarkTheme":Landroid/content/Context;
    .end local v2    # "dualToneLightTheme":Landroid/content/Context;
    .end local v4    # "height":I
    .end local v5    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "width":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702a1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 124
    .restart local v4    # "height":I
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702a2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .restart local v6    # "width":I
    goto :goto_0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .prologue
    .line 316
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private loadPercentView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 224
    const v1, 0x7f0d001f

    const/4 v2, 0x0

    .line 223
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private scaleBatteryMeterViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 274
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 276
    .local v6, "typedValue":Landroid/util/TypedValue;
    const v7, 0x7f0702b0

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 277
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 279
    .local v2, "iconScaleFactor":F
    const v7, 0x7f0702a1

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 280
    .local v0, "batteryHeight":I
    const v7, 0x7f0702a2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 282
    .local v1, "batteryWidth":I
    iget-boolean v7, p0, Lcom/android/systemui/BatteryMeterView;->mSupport2018StatusbarFeatureNormal:Z

    if-eqz v7, :cond_0

    .line 283
    const v7, 0x7f0702fa

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 284
    const v7, 0x7f0702fb

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 287
    :cond_0
    const v7, 0x7f070059

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 289
    .local v3, "marginBottom":I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 290
    int-to-float v7, v1

    mul-float/2addr v7, v2

    float-to-int v7, v7

    int-to-float v8, v0

    mul-float/2addr v8, v2

    float-to-int v8, v8

    .line 289
    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 291
    .local v5, "scaledLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v9, v9, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 293
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const v8, 0x7f07024e

    invoke-static {v7, v8}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 295
    return-void
.end method

.method private updatePercentText()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 230
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    return-void
.end method

.method private updateShowPercent()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 235
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 236
    .local v1, "showing":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 237
    const-string/jumbo v3, "status_bar_show_battery_percent"

    .line 236
    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 237
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    .line 236
    if-eqz v2, :cond_5

    .line 238
    :cond_0
    if-nez v1, :cond_3

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->loadPercentView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 242
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mSupport2018StatusbarFeatureNormal:Z

    if-eqz v2, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 244
    .local v0, "padding":I
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 248
    .end local v0    # "padding":I
    :cond_1
    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 250
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    .line 252
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 253
    const/4 v4, -0x2

    .line 254
    const/4 v5, -0x1

    .line 252
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 250
    invoke-virtual {p0, v2, v6, v3}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 262
    :cond_3
    :goto_1
    return-void

    .line 235
    .end local v1    # "showing":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "showing":Z
    goto :goto_0

    .line 257
    :cond_5
    if-eqz v1, :cond_3

    .line 258
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->removeView(Landroid/view/View;)V

    .line 259
    iput-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    goto :goto_1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 169
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    .line 171
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 174
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "icon_blacklist"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 175
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 12
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBatteryLevel(I)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setCharging(Z)V

    .line 192
    const/4 v7, -0x1

    .line 194
    .local v7, "UNKNOWN_LEVEL":I
    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v9, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v8

    .line 196
    .local v8, "batteryIntent":Landroid/content/Intent;
    if-eqz v8, :cond_0

    .line 198
    const-string/jumbo v0, "mod_level"

    const/4 v4, -0x1

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    .line 197
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    .line 199
    const-string/jumbo v4, "scale"

    const/16 v10, 0x64

    invoke-virtual {v8, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    .line 197
    div-float/2addr v0, v4

    float-to-int v1, v0

    .line 200
    .local v1, "modLevel":I
    const-string/jumbo v0, "mod_status"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 201
    .local v2, "modStatus":I
    const-string/jumbo v0, "plugged_raw"

    .line 202
    const-string/jumbo v4, "plugged"

    invoke-virtual {v8, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 201
    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 203
    .local v3, "plugType":I
    if-eqz v3, :cond_1

    const/16 v0, 0x8

    if-eq v3, v0, :cond_1

    const/4 p2, 0x1

    .line 204
    .local p2, "pluggedIn":Z
    :goto_0
    const-string/jumbo v0, "mod_type"

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 206
    .local v5, "modType":I
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setModBatteryDetails(IIIZII)V

    .line 210
    .end local v1    # "modLevel":I
    .end local v2    # "modStatus":I
    .end local v3    # "plugType":I
    .end local v5    # "modType":I
    .end local p2    # "pluggedIn":Z
    :cond_0
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updatePercentText()V

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz p3, :cond_2

    const v0, 0x7f110033

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v11

    .line 213
    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    return-void

    .line 203
    .restart local v1    # "modLevel":I
    .restart local v2    # "modStatus":I
    .restart local v3    # "plugType":I
    .local p2, "pluggedIn":Z
    :cond_1
    const/4 p2, 0x0

    .local p2, "pluggedIn":Z
    goto :goto_0

    .line 214
    .end local v1    # "modLevel":I
    .end local v2    # "modStatus":I
    .end local v3    # "plugType":I
    .end local p2    # "pluggedIn":Z
    :cond_2
    const v0, 0x7f110032

    goto :goto_1
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 5
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    .line 299
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, p2

    .line 300
    .local v2, "intensity":F
    :goto_0
    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeFillColor:I

    .line 301
    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeFillColor:I

    .line 300
    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result v1

    .line 302
    .local v1, "foreground":I
    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mLightModeBackgroundColor:I

    .line 303
    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mDarkModeBackgroundColor:I

    .line 302
    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/BatteryMeterView;->getColorForDarkIntensity(FII)I

    move-result v0

    .line 304
    .local v0, "background":I
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v3, v1, v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setColors(II)V

    .line 305
    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->setTextColor(I)V

    .line 306
    return-void

    .line 299
    .end local v0    # "background":I
    .end local v1    # "foreground":I
    .end local v2    # "intensity":F
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "intensity":F
    goto :goto_0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 267
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSettingObserver:Lcom/android/systemui/BatteryMeterView$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 184
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDrawable:Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setPowerSave(Z)V

    .line 220
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string/jumbo v1, "icon_blacklist"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 162
    .local v0, "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mSlotBattery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 164
    .end local v0    # "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 162
    .restart local v0    # "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setForceShowPercent(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowPercent:Z

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateShowPercent()V

    .line 151
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 309
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mTextColor:I

    .line 310
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    :cond_0
    return-void
.end method
