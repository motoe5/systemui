.class public Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawableBase.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field protected final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field protected final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private final mFrame:Landroid/graphics/RectF;

.field protected final mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mIconTint:I

.field private final mIntrinsicHeight:I

.field private final mIntrinsicWidth:I

.field private mLevel:I

.field private mModLevel:I

.field private final mModPath:Landroid/graphics/Path;

.field private final mModPlusFrame:Landroid/graphics/RectF;

.field private final mModPlusPaint:Landroid/graphics/Paint;

.field private mModPlusStrokeWidth:F

.field private mModShape:I

.field private mModStatus:I

.field private mModType:I

.field private mMotoIntrinsicHeight:I

.field private mMotoIntrinsicWidth:I

.field private mOldDarkIntensity:F

.field private mPlugType:I

.field private final mPlusFrame:Landroid/graphics/RectF;

.field protected final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPowerSaveEnabled:Z

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mSupport2018StatusbarFeatureNormal:Z

.field private mTextHeight:F

.field protected final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field protected final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameColor"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 126
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 59
    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    .line 78
    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    .line 79
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mOldDarkIntensity:F

    .line 87
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    .line 89
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    .line 91
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    .line 92
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    .line 93
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    .line 94
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    .line 96
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPath:Landroid/graphics/Path;

    .line 97
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusFrame:Landroid/graphics/RectF;

    .line 100
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    .line 101
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mClipPath:Landroid/graphics/Path;

    .line 102
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    .line 109
    const/high16 v6, 0x40000000    # 2.0f

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusStrokeWidth:F

    .line 114
    iput v10, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mMotoIntrinsicWidth:I

    .line 115
    iput v10, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mMotoIntrinsicHeight:I

    .line 116
    iput-boolean v10, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSupport2018StatusbarFeatureNormal:Z

    .line 127
    iput-object p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 129
    .local v5, "res":Landroid/content/res/Resources;
    sget v6, Lcom/android/settingslib/R$array;->batterymeter_color_levels:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 130
    .local v4, "levels":Landroid/content/res/TypedArray;
    sget v6, Lcom/android/settingslib/R$array;->batterymeter_color_values:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 132
    .local v1, "colors":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 133
    .local v0, "N":I
    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    .line 134
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 135
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v4, v3, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aput v8, v6, v7

    .line 136
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 137
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v8

    invoke-static {p1, v8}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v8

    aput v8, v6, v7

    .line 134
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v7

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    sget v6, Lcom/android/settingslib/R$string;->battery_meter_very_low_overlay_symbol:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningString:Ljava/lang/String;

    .line 146
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 147
    const v7, 0x10e0022

    .line 146
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 149
    sget v7, Lcom/android/settingslib/R$fraction;->battery_button_height_fraction:I

    .line 148
    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 151
    sget v7, Lcom/android/settingslib/R$fraction;->battery_subpixel_smoothing_left:I

    .line 150
    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingLeft:F

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 153
    sget v7, Lcom/android/settingslib/R$fraction;->battery_subpixel_smoothing_right:I

    .line 152
    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingRight:F

    .line 155
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    .line 156
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 158
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    .line 162
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 163
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    .line 167
    const-string/jumbo v6, "sans-serif-condensed"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 168
    .local v2, "font":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 169
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 171
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 172
    const-string/jumbo v6, "sans-serif"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 173
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 174
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 175
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v6, v6

    if-le v6, v9, :cond_2

    .line 176
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    :cond_2
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settingslib/R$color;->meter_consumed_color:I

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mChargeColor:I

    .line 181
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    .line 182
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settingslib/R$color;->batterymeter_bolt_color:I

    invoke-static {v7, v8}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    sget v6, Lcom/android/settingslib/R$array;->batterymeter_bolt_points:I

    invoke-static {v5, v6}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->loadPoints(Landroid/content/res/Resources;I)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    .line 185
    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    .line 186
    sget v6, Lcom/android/settingslib/R$array;->batterymeter_plus_points:I

    invoke-static {v5, v6}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->loadPoints(Landroid/content/res/Resources;I)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    .line 189
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusPaint:Landroid/graphics/Paint;

    .line 190
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusStrokeWidth:F

    invoke-direct {p0, v7}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->dipToPixel(F)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    iget-object v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusPaint:Landroid/graphics/Paint;

    sget v7, Lcom/android/settingslib/R$color;->meter_consumed_color:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settingslib/R$dimen;->battery_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settingslib/R$dimen;->battery_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    .line 196
    return-void
.end method

.method private dipToPixel(F)F
    .locals 2
    .param p1, "dipValue"    # F

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 591
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method private getColorForLevel(I)I
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 280
    iget-boolean v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_0

    .line 281
    iget v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    return v3

    .line 283
    :cond_0
    const/4 v0, 0x0

    .line 284
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 285
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    aget v2, v3, v1

    .line 286
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 287
    if-gt p1, v2, :cond_2

    .line 290
    iget-object v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_1

    .line 291
    iget v3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    return v3

    .line 293
    :cond_1
    return v0

    .line 284
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 297
    .end local v2    # "thresh":I
    :cond_3
    return v0
.end method

.method private static loadPoints(Landroid/content/res/Resources;I)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "pointArrayRes"    # I

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 256
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 257
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 258
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 259
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 257
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 261
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 262
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 263
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 264
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 262
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 266
    :cond_1
    return-object v4
.end method


# virtual methods
.method synthetic -com_android_settingslib_graph_BatteryMeterDrawableBase-mthref-0()V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method synthetic -com_android_settingslib_graph_BatteryMeterDrawableBase-mthref-1()V
    .locals 0

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 51
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    move/from16 v33, v0

    .line 315
    .local v33, "level":I
    const/4 v4, -0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_0

    return-void

    .line 318
    :cond_0
    const/16 v35, 0x0

    .line 319
    .local v35, "modStatusShown":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModStatus:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModLevel:I

    invoke-static {v4, v6}, Lcom/motorola/settingslib/ModUtils;->isModAttached(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 320
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    xor-int/lit8 v4, v4, 0x1

    .line 319
    if-eqz v4, :cond_5

    .line 321
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModLevel:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModType:I

    move/from16 v0, v33

    invoke-static {v0, v4, v6}, Lcom/motorola/settingslib/ModUtils;->isModActive(III)Z

    move-result v32

    .line 324
    :goto_0
    move/from16 v0, v33

    int-to-float v4, v0

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v29, v4, v6

    .line 325
    .local v29, "drawFrac":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    move/from16 v30, v0

    .line 326
    .local v30, "height":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v4, v4

    const v6, 0x3f27b961

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v47, v0

    .line 327
    .local v47, "width":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    sub-int v4, v4, v47

    div-int/lit8 v43, v4, 0x2

    .line 329
    .local v43, "px":I
    move/from16 v0, v30

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v26, v0

    .line 331
    .local v26, "buttonHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v47

    int-to-float v10, v0

    move/from16 v0, v30

    int-to-float v11, v0

    invoke-virtual {v4, v6, v7, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v43

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 336
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v4, :cond_1

    if-eqz v32, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mChargeColor:I

    :goto_1
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    .line 341
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move/from16 v0, v47

    int-to-float v7, v0

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 342
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 343
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    move/from16 v0, v47

    int-to-float v11, v0

    const/high16 v13, 0x3e800000    # 0.25f

    mul-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    .line 344
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    move/from16 v0, v26

    int-to-float v13, v0

    add-float/2addr v11, v13

    .line 340
    invoke-virtual {v4, v6, v7, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move/from16 v0, v26

    int-to-float v7, v0

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingLeft:F

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSubpixelSmoothingRight:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    .line 358
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mChargeColor:I

    :goto_2
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v12, v4, v6

    .line 362
    .local v12, "circleY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v28, v0

    .line 363
    .local v28, "circleX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v6

    const v6, 0x3ee66666    # 0.45f

    mul-float v27, v4, v6

    .line 364
    .local v27, "circleR":F
    const v4, 0x3f0ccccd    # 0.55f

    mul-float v39, v27, v4

    .line 369
    .local v39, "plusOffset":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v6

    const v6, 0x3e19999a    # 0.15f

    mul-float v44, v4, v6

    .line 370
    .local v44, "silhCircleR":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float v46, v4, v44

    .line 371
    .local v46, "silhCircleY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v45, v4, v6

    .line 374
    .local v45, "silhCircleX":F
    const/16 v4, 0x60

    move/from16 v0, v33

    if-lt v0, v4, :cond_8

    .line 375
    const/high16 v29, 0x3f800000    # 1.0f

    .line 380
    :cond_2
    :goto_3
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v29, v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    .line 384
    .local v34, "levelTop":F
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 387
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModShape:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_a

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v5, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v8, v10, Landroid/graphics/RectF;->bottom:F

    .line 389
    const/high16 v9, 0x41f00000    # 30.0f

    const/high16 v10, 0x41f00000    # 30.0f

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 388
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v44

    invoke-virtual {v4, v0, v1, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 406
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-eqz v4, :cond_12

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    .line 410
    .local v23, "boltTop":F
    const/high16 v48, 0x40800000    # 4.0f

    .line 411
    .local v48, "widthFactor":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v21

    .line 412
    .local v21, "boltHeight":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModShape:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 414
    add-float v23, v46, v44

    .line 415
    const/high16 v48, 0x40400000    # 3.0f

    .line 416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v21, v4, v23

    .line 419
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v6, v6, v48

    add-float v20, v4, v6

    .line 420
    .local v20, "bl":F
    const/high16 v4, 0x40c00000    # 6.0f

    div-float v4, v21, v4

    add-float v25, v23, v4

    .line 421
    .local v25, "bt":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v6, v6, v48

    sub-float v24, v4, v6

    .line 422
    .local v24, "br":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v6, 0x41200000    # 10.0f

    div-float v6, v21, v6

    sub-float v19, v4, v6

    .line 425
    .local v19, "bb":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v20

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v25

    if-eqz v4, :cond_b

    .line 427
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    move/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v19

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 428
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    .line 430
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 431
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 429
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 432
    const/16 v31, 0x2

    .local v31, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    array-length v4, v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_10

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    .line 434
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    aget v7, v7, v31

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 435
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    add-int/lit8 v11, v31, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 433
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    add-int/lit8 v31, v31, 0x2

    goto :goto_6

    .line 319
    .end local v12    # "circleY":F
    .end local v19    # "bb":F
    .end local v20    # "bl":F
    .end local v21    # "boltHeight":F
    .end local v23    # "boltTop":F
    .end local v24    # "br":F
    .end local v25    # "bt":F
    .end local v26    # "buttonHeight":I
    .end local v27    # "circleR":F
    .end local v28    # "circleX":F
    .end local v29    # "drawFrac":F
    .end local v30    # "height":I
    .end local v31    # "i":I
    .end local v34    # "levelTop":F
    .end local v39    # "plusOffset":F
    .end local v43    # "px":I
    .end local v44    # "silhCircleR":F
    .end local v45    # "silhCircleX":F
    .end local v46    # "silhCircleY":F
    .end local v47    # "width":I
    .end local v48    # "widthFactor":F
    :cond_5
    const/16 v32, 0x0

    .local v32, "isModCharging":Z
    goto/16 :goto_0

    .line 336
    .end local v32    # "isModCharging":Z
    .restart local v26    # "buttonHeight":I
    .restart local v29    # "drawFrac":F
    .restart local v30    # "height":I
    .restart local v43    # "px":I
    .restart local v47    # "width":I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v4

    goto/16 :goto_1

    .line 358
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v4

    goto/16 :goto_2

    .line 376
    .restart local v12    # "circleY":F
    .restart local v27    # "circleR":F
    .restart local v28    # "circleX":F
    .restart local v39    # "plusOffset":F
    .restart local v44    # "silhCircleR":F
    .restart local v45    # "silhCircleX":F
    .restart local v46    # "silhCircleY":F
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    move/from16 v0, v33

    if-gt v0, v4, :cond_2

    .line 377
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 381
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, v29

    mul-float/2addr v6, v7

    add-float v34, v4, v6

    .restart local v34    # "levelTop":F
    goto/16 :goto_4

    .line 394
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    .line 426
    .restart local v19    # "bb":F
    .restart local v20    # "bl":F
    .restart local v21    # "boltHeight":F
    .restart local v23    # "boltTop":F
    .restart local v24    # "br":F
    .restart local v25    # "bt":F
    .restart local v48    # "widthFactor":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v24

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v19

    if-nez v4, :cond_4

    .line 442
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v4, v34

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    div-float v22, v4, v6

    .line 443
    .local v22, "boltPct":F
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 444
    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v22, v4

    if-gtz v4, :cond_11

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 504
    .end local v19    # "bb":F
    .end local v20    # "bl":F
    .end local v21    # "boltHeight":F
    .end local v22    # "boltPct":F
    .end local v23    # "boltTop":F
    .end local v24    # "br":F
    .end local v25    # "bt":F
    .end local v48    # "widthFactor":F
    :cond_c
    :goto_8
    const/16 v37, 0x0

    .line 505
    .local v37, "pctOpaque":Z
    const/4 v8, 0x0

    .local v8, "pctX":F
    const/4 v9, 0x0

    .line 506
    .local v9, "pctY":F
    const/4 v5, 0x0

    .line 507
    .local v5, "pctText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    move/from16 v0, v33

    if-le v0, v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShowPercent:Z

    if-eqz v4, :cond_d

    .line 509
    if-nez v35, :cond_d

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getColorForLevel(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v30

    int-to-float v7, v0

    .line 513
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    const/16 v10, 0x64

    if-ne v4, v10, :cond_1b

    const v4, 0x3ec28f5c    # 0.38f

    .line 511
    :goto_9
    mul-float/2addr v4, v7

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextHeight:F

    .line 515
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 516
    .local v5, "pctText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v8, v4, v6

    .line 517
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextHeight:F

    add-float/2addr v4, v6

    const v6, 0x3ef0a3d7    # 0.47f

    mul-float v9, v4, v6

    .line 518
    cmpl-float v4, v34, v9

    if-lez v4, :cond_1c

    const/16 v37, 0x1

    .line 519
    :goto_a
    if-nez v37, :cond_d

    .line 520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 530
    .end local v5    # "pctText":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v34

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mClipPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 539
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e

    .line 541
    if-nez v35, :cond_e

    .line 542
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCriticalLevel:I

    move/from16 v0, v33

    if-gt v0, v4, :cond_1d

    .line 544
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v49, v4, v6

    .line 545
    .local v49, "x":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    add-float/2addr v4, v6

    const v6, 0x3ef5c28f    # 0.48f

    mul-float v50, v4, v6

    .line 546
    .local v50, "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 555
    .end local v49    # "x":F
    .end local v50    # "y":F
    :cond_e
    :goto_b
    if-eqz v35, :cond_f

    .line 557
    sub-float v11, v28, v39

    add-float v13, v28, v39

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v14, v12

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 558
    sub-float v15, v12, v39

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusStrokeWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->dipToPixel(F)F

    move-result v4

    sub-float v17, v12, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v13, p1

    move/from16 v14, v28

    move/from16 v16, v28

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 559
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusStrokeWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->dipToPixel(F)F

    move-result v4

    add-float v15, v12, v4

    add-float v17, v12, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v13, p1

    move/from16 v14, v28

    move/from16 v16, v28

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 563
    :cond_f
    return-void

    .line 437
    .end local v8    # "pctX":F
    .end local v9    # "pctY":F
    .end local v37    # "pctOpaque":Z
    .restart local v19    # "bb":F
    .restart local v20    # "bl":F
    .restart local v21    # "boltHeight":F
    .restart local v23    # "boltTop":F
    .restart local v24    # "br":F
    .restart local v25    # "bt":F
    .restart local v31    # "i":I
    .restart local v48    # "widthFactor":F
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    .line 438
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 439
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPoints:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 437
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_7

    .line 449
    .end local v31    # "i":I
    .restart local v22    # "boltPct":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_8

    .line 451
    .end local v19    # "bb":F
    .end local v20    # "bl":F
    .end local v21    # "boltHeight":F
    .end local v22    # "boltPct":F
    .end local v23    # "boltTop":F
    .end local v24    # "br":F
    .end local v25    # "bt":F
    .end local v48    # "widthFactor":F
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    if-eqz v4, :cond_17

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float v42, v4, v6

    .line 454
    .local v42, "pw":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float v6, v6, v42

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v38, v4, v6

    .line 455
    .local v38, "pl":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float v6, v6, v42

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v41, v4, v6

    .line 456
    .local v41, "pt":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float v6, v6, v42

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v40, v4, v6

    .line 457
    .local v40, "pr":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float v6, v6, v42

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v36, v4, v6

    .line 458
    .local v36, "pb":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v38

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v41

    if-eqz v4, :cond_14

    .line 460
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    move/from16 v0, v38

    move/from16 v1, v41

    move/from16 v2, v40

    move/from16 v3, v36

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    .line 463
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 464
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 462
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 465
    const/16 v31, 0x2

    .restart local v31    # "i":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    array-length v4, v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_15

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    .line 467
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    aget v7, v7, v31

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 468
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    add-int/lit8 v11, v31, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 466
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 465
    add-int/lit8 v31, v31, 0x2

    goto :goto_c

    .line 459
    .end local v31    # "i":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v40

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v36

    if-nez v4, :cond_13

    .line 475
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v4, v34

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    div-float v22, v4, v6

    .line 476
    .restart local v22    # "boltPct":F
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 477
    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v22, v4

    if-gtz v4, :cond_16

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 470
    .end local v22    # "boltPct":F
    .restart local v31    # "i":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    .line 471
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 472
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPoints:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 470
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_d

    .line 482
    .end local v31    # "i":I
    .restart local v22    # "boltPct":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_8

    .line 485
    .end local v22    # "boltPct":F
    .end local v36    # "pb":F
    .end local v38    # "pl":F
    .end local v40    # "pr":F
    .end local v41    # "pt":F
    .end local v42    # "pw":F
    :cond_17
    if-eqz v32, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModShape:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_c

    .line 486
    const/16 v35, 0x1

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x40900000    # 4.5f

    div-float/2addr v6, v7

    add-float v20, v4, v6

    .line 488
    .restart local v20    # "bl":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    add-float v25, v4, v6

    .line 489
    .restart local v25    # "bt":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x40900000    # 4.5f

    div-float/2addr v6, v7

    sub-float v24, v4, v6

    .line 490
    .restart local v24    # "br":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    sub-float v19, v4, v6

    .line 491
    .restart local v19    # "bb":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v20

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v25

    if-eqz v4, :cond_1a

    .line 493
    :cond_18
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusFrame:Landroid/graphics/RectF;

    move/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v19

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 496
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v4, v0, v12, v1, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 499
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_8

    .line 492
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v24

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v19

    if-eqz v4, :cond_19

    goto :goto_e

    .line 513
    .end local v19    # "bb":F
    .end local v20    # "bl":F
    .end local v24    # "br":F
    .end local v25    # "bt":F
    .local v5, "pctText":Ljava/lang/String;
    .restart local v8    # "pctX":F
    .restart local v9    # "pctY":F
    .restart local v37    # "pctOpaque":Z
    :cond_1b
    const/high16 v4, 0x3f000000    # 0.5f

    goto/16 :goto_9

    .line 518
    .local v5, "pctText":Ljava/lang/String;
    :cond_1c
    const/16 v37, 0x0

    goto/16 :goto_a

    .line 547
    .end local v5    # "pctText":Ljava/lang/String;
    :cond_1d
    if-eqz v37, :cond_e

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSupport2018StatusbarFeatureNormal:Z

    if-eqz v0, :cond_0

    .line 202
    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mMotoIntrinsicHeight:I

    return v0

    .line 206
    :cond_0
    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSupport2018StatusbarFeatureNormal:Z

    if-eqz v0, :cond_0

    .line 213
    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mMotoIntrinsicWidth:I

    return v0

    .line 217
    :cond_0
    iget v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method protected postInvalidate()V
    .locals 4

    .prologue
    .line 250
    new-instance v0, Lcom/android/settingslib/graph/-$Lambda$W5EX9kuhFh0lIe1Aych46kK6DTA;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/-$Lambda$W5EX9kuhFh0lIe1Aych46kK6DTA;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 251
    new-instance v0, Lcom/android/settingslib/graph/-$Lambda$W5EX9kuhFh0lIe1Aych46kK6DTA$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/-$Lambda$W5EX9kuhFh0lIe1Aych46kK6DTA$1;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 252
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 568
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    .line 236
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    .line 237
    return-void
.end method

.method public setBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 272
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    .line 273
    sub-int v0, p3, p1

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWidth:I

    .line 274
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 275
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextHeight:F

    .line 276
    return-void
.end method

.method public setCharging(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    .line 228
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 573
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 574
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 575
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 576
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 577
    return-void
.end method

.method public setColors(II)V
    .locals 1
    .param p1, "fillColor"    # I
    .param p2, "backgroundColor"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mIconTint:I

    .line 302
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    iput p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mChargeColor:I

    .line 306
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->invalidateSelf()V

    .line 309
    return-void
.end method

.method public setModBatteryDetails(IIIZII)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "status"    # I
    .param p3, "plugType"    # I
    .param p4, "pluggedIn"    # Z
    .param p5, "modType"    # I
    .param p6, "modShape"    # I

    .prologue
    .line 599
    iput p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModLevel:I

    .line 600
    iput p2, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModStatus:I

    .line 601
    iput p3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPlugType:I

    .line 602
    iput-boolean p4, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mCharging:Z

    .line 603
    iput p5, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModType:I

    .line 604
    iput p6, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mModShape:I

    .line 606
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    .line 607
    return-void
.end method

.method public setPowerSave(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mPowerSaveEnabled:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    .line 246
    return-void
.end method

.method public setShowPercent(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mShowPercent:Z

    .line 222
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    .line 223
    return-void
.end method

.method public setSupport2018Statusbar(Z)V
    .locals 2
    .param p1, "is2018Statusbar"    # Z

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSupport2018StatusbarFeatureNormal:Z

    .line 613
    iget-boolean v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mSupport2018StatusbarFeatureNormal:Z

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->zz_moto_battery_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mMotoIntrinsicWidth:I

    .line 615
    iget-object v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->zz_moto_battery_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mMotoIntrinsicHeight:I

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->postInvalidate()V

    .line 618
    return-void
.end method
