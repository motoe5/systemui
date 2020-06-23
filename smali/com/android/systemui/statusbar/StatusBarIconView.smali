.class public Lcom/android/systemui/statusbar/StatusBarIconView;
.super Lcom/android/systemui/statusbar/AnimatedImageView;
.source "StatusBarIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarIconView$1;,
        Lcom/android/systemui/statusbar/StatusBarIconView$2;,
        Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final DOT_APPEAR_AMOUNT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_APPEAR_AMOUNT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ANIMATION_DURATION_FAST:I

.field private mAlwaysScaleIcon:Z

.field private mAnimationStartColor:I

.field private final mBlocked:Z

.field private mCachedContrastBackgroundColor:I

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private final mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mContrastedDrawableColor:I

.field private mCurrentSetColor:I

.field private mDarkAmount:F

.field private mDecorColor:I

.field private mDensity:I

.field private mDotAnimator:Landroid/animation/ObjectAnimator;

.field private mDotAppearAmount:F

.field private final mDotPaint:Landroid/graphics/Paint;

.field private mDotRadius:F

.field private final mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

.field private mDrawableColor:I

.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mIconAppearAmount:F

.field private mIconAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mIconColor:I

.field private mIconScale:F

.field private mIsStatusIcon:Z

.field private mIsSupportNewSpec:Z

.field private mNotification:Landroid/service/notification/StatusBarNotification;

.field private mNumberBackground:Landroid/graphics/drawable/Drawable;

.field private mNumberPain:Landroid/graphics/Paint;

.field private mNumberText:Ljava/lang/String;

.field private mNumberX:I

.field private mNumberY:I

.field private mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

.field private mSlot:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mStaticDotRadius:I

.field private mStatusBarIconDrawingSize:I

.field private mStatusBarIconDrawingSizeDark:I

.field private mStatusBarIconSize:I

.field private mStatusBarScale:F

.field private mVisibleState:I


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/StatusBarIconView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p1, "-value"    # Landroid/animation/ObjectAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p1, "-value"    # Landroid/animation/ObjectAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->runRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$1;

    const-string/jumbo v1, "iconAppearAmount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView$1;-><init>(Ljava/lang/String;)V

    .line 67
    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Landroid/util/Property;

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$2;

    const-string/jumbo v1, "dot_appear_amount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView$2;-><init>(Ljava/lang/String;)V

    .line 80
    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Landroid/util/Property;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->ANIMATION_DURATION_FAST:I

    .line 95
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    .line 96
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    .line 97
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    .line 108
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 110
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsSupportNewSpec:Z

    .line 111
    const v0, 0x3f6d9168    # 0.928f

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarScale:F

    .line 112
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsStatusIcon:Z

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    .line 117
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 118
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 128
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 129
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ;-><init>(Ljava/lang/Object;)V

    .line 130
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 138
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 240
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    .line 241
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    .line 242
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAlwaysScaleIcon:Z

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleDimens()V

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p4, "blocked"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    .line 60
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->ANIMATION_DURATION_FAST:I

    .line 95
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    .line 96
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    .line 97
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    .line 108
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 110
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsSupportNewSpec:Z

    .line 111
    const v0, 0x3f6d9168    # 0.928f

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarScale:F

    .line 112
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsStatusIcon:Z

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    .line 117
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 118
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 128
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 129
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ$1;-><init>(Ljava/lang/Object;)V

    .line 130
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 138
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 147
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    .line 148
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    .line 149
    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const v1, 0x7f0802c6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsSupportNewSpec:Z

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    .line 157
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    const v1, 0x10600e7

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 164
    return-void
.end method

.method public static contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;
    .locals 11
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 503
    const-string/jumbo v1, ""

    .line 505
    .local v1, "appName":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 506
    .local v2, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 518
    .end local v2    # "builder":Landroid/app/Notification$Builder;
    :cond_0
    :goto_0
    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "android.title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 519
    .local v7, "title":Ljava/lang/CharSequence;
    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "android.text"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 520
    .local v5, "text":Ljava/lang/CharSequence;
    iget-object v6, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 523
    .local v6, "ticker":Ljava/lang/CharSequence;
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v8, v5

    .line 525
    .local v8, "titleOrText":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v3, v8

    .line 528
    .local v3, "desc":Ljava/lang/CharSequence;
    :goto_2
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const v10, 0x7f11005f

    invoke-virtual {p0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 507
    .end local v3    # "desc":Ljava/lang/CharSequence;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "ticker":Ljava/lang/CharSequence;
    .end local v7    # "title":Ljava/lang/CharSequence;
    .end local v8    # "titleOrText":Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    .line 508
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v9, "StatusBarIconView"

    const-string/jumbo v10, "Unable to recover builder"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 511
    const-string/jumbo v10, "android.appInfo"

    .line 510
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 512
    .local v0, "appInfo":Landroid/os/Parcelable;
    instance-of v9, v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_0

    .line 513
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 514
    .end local v0    # "appInfo":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 513
    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 523
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "text":Ljava/lang/CharSequence;
    .restart local v6    # "ticker":Ljava/lang/CharSequence;
    .restart local v7    # "title":Ljava/lang/CharSequence;
    :cond_1
    move-object v8, v7

    .restart local v8    # "titleOrText":Ljava/lang/CharSequence;
    goto :goto_1

    .line 526
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v3, v6

    .restart local v3    # "desc":Ljava/lang/CharSequence;
    goto :goto_2

    .end local v3    # "desc":Ljava/lang/CharSequence;
    :cond_3
    const-string/jumbo v3, ""

    .restart local v3    # "desc":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public static getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusBarIcon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 357
    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 358
    .local v3, "userId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 359
    const/4 v3, 0x0

    .line 362
    :cond_0
    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, p0, v3}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 364
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 365
    .local v2, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702b0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 366
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 369
    .local v1, "scaleFactor":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    .line 370
    return-object v0

    .line 373
    :cond_1
    new-instance v4, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    return-object v4
.end method

.method private getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private maybeUpdateIconScaleDimens()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAlwaysScaleIcon:Z

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleDimens()V

    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsSupportNewSpec:Z

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsStatusIcon:Z

    .line 177
    :cond_1
    return-void
.end method

.method private reloadDimens()V
    .locals 3

    .prologue
    .line 224
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 225
    .local v0, "applyRadius":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    .line 226
    if-eqz v0, :cond_0

    .line 227
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    .line 229
    :cond_0
    return-void

    .line 224
    .end local v0    # "applyRadius":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "applyRadius":Z
    goto :goto_0
.end method

.method private runRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 733
    if-eqz p1, :cond_0

    .line 734
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 736
    :cond_0
    return-void
.end method

.method private setColorInternal(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 564
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 565
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    .line 566
    return-void
.end method

.method private setContentDescription(Landroid/app/Notification;)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 480
    if-eqz p1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "d":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 486
    .end local v0    # "d":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateContrastedStaticColor()V
    .locals 4

    .prologue
    .line 627
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    .line 628
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    .line 629
    return-void

    .line 632
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    .line 633
    .local v0, "contrastedColor":I
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v2, v0}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 635
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 636
    .local v1, "hsl":[F
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    invoke-static {v2, v1}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 639
    const/4 v2, 0x1

    aget v2, v1, v2

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 640
    const/4 v0, 0x0

    .line 642
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    .line 643
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 642
    invoke-static {v2, v0, v3}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v0

    .line 645
    .end local v1    # "hsl":[F
    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    .line 646
    return-void
.end method

.method private updateDecorColor()V
    .locals 4

    .prologue
    .line 541
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    const/4 v3, -0x1

    invoke-static {v1, v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 542
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 545
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    .line 549
    :cond_0
    return-void
.end method

.method private updateDrawable(Z)Z
    .locals 6
    .param p1, "withClear"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 319
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-nez v2, :cond_0

    .line 320
    return v5

    .line 324
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 330
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 331
    const-string/jumbo v2, "StatusBarIconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No icon for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return v5

    .line 325
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "StatusBarIconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OOM while inflating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return v5

    .line 334
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    const/4 v2, 0x1

    return v2
.end method

.method private updateIconColor()V
    .locals 3

    .prologue
    .line 569
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-eqz v0, :cond_0

    .line 571
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    const/4 v2, -0x1

    .line 570
    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 576
    :goto_0
    return-void

    .line 573
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateGrayscale(Landroid/widget/ImageView;F)V

    goto :goto_0
.end method

.method private updateIconScale()V
    .locals 5

    .prologue
    .line 191
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    int-to-float v2, v2

    .line 192
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    int-to-float v3, v3

    .line 193
    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    .line 190
    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    .line 194
    .local v0, "imageBounds":F
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    .line 195
    .local v1, "outerBounds":I
    int-to-float v2, v1

    div-float v2, v0, v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 197
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsSupportNewSpec:Z

    if-eqz v2, :cond_0

    .line 198
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 201
    :cond_0
    return-void
.end method

.method private updateIconScaleDimens()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0702b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    .line 183
    const v1, 0x7f0702ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 182
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    .line 185
    const v1, 0x7f0702ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 184
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScale()V

    .line 187
    return-void
.end method


# virtual methods
.method protected debug(I)V
    .locals 3
    .param p1, "depth"    # I

    .prologue
    .line 441
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->debug(I)V

    .line 442
    const-string/jumbo v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string/jumbo v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void
.end method

.method public equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 4
    .param p1, "a"    # Landroid/graphics/drawable/Icon;
    .param p2, "b"    # Landroid/graphics/drawable/Icon;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    if-ne p1, p2, :cond_0

    return v0

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 263
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 269
    :pswitch_0
    return v1

    .line 265
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 263
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getContrastedStaticDrawableColor(I)I
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 619
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 620
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    .line 623
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return v0
.end method

.method public getDotAppearAmount()F
    .locals 1

    .prologue
    .line 769
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    return v0
.end method

.method public getIconAppearAmount()F
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    return v0
.end method

.method public getIconScale()F
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    return v0
.end method

.method public getIconScaleFullyDark()F
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeDark:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getStaticDrawableColor()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    return v0
.end method

.method public getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public getVisibleState()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_StatusBarIconView_28177(Ljava/lang/Float;)V
    .locals 1
    .param p1, "f"    # Ljava/lang/Float;

    .prologue
    .line 778
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDarkAmount:F

    .line 779
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScale()V

    .line 780
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    .line 781
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_StatusBarIconView_4846(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 132
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 133
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    .line 132
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 134
    .local v0, "newColor":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 215
    .local v0, "density":I
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 216
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 221
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 404
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 407
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsSupportNewSpec:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsStatusIcon:Z

    if-eqz v3, :cond_3

    .line 408
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarScale:F

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarScale:F

    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    mul-float/2addr v4, v5

    .line 409
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 408
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 415
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 416
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 419
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 420
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 421
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 423
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_2

    .line 426
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_4

    .line 427
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    mul-float v2, v3, v4

    .line 428
    .local v2, "radius":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 434
    .local v0, "alpha":F
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 437
    .end local v0    # "alpha":F
    .end local v2    # "radius":F
    :cond_2
    return-void

    .line 411
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    mul-float/2addr v4, v5

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 411
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    .line 430
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    sub-float v1, v3, v7

    .line 431
    .local v1, "fadeOutAmount":F
    sub-float v0, v7, v1

    .line 432
    .restart local v0    # "alpha":F
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    invoke-static {v3, v4, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    .restart local v2    # "radius":F
    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 382
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 386
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 398
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->onRtlPropertiesChanged(I)V

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 400
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 390
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AnimatedImageView;->onSizeChanged(IIII)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    .line 394
    :cond_0
    return-void
.end method

.method placeNumber()V
    .locals 13

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 449
    const v11, 0x10e0003

    .line 448
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 450
    .local v7, "tooBig":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v10, v10, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-le v10, v7, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 452
    const v11, 0x1040017

    .line 451
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, "str":Ljava/lang/String;
    :goto_0
    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getWidth()I

    move-result v9

    .line 460
    .local v9, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v3

    .line 461
    .local v3, "h":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 462
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12, v11, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 463
    iget v10, v4, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    sub-int v8, v10, v11

    .line 464
    .local v8, "tw":I
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int v6, v10, v11

    .line 465
    .local v6, "th":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 466
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v8

    iget v11, v4, Landroid/graphics/Rect;->right:I

    add-int v1, v10, v11

    .line 467
    .local v1, "dw":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 468
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 470
    :cond_0
    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int v10, v9, v10

    iget v11, v4, Landroid/graphics/Rect;->right:I

    sub-int v11, v1, v11

    iget v12, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    .line 471
    iget v10, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    add-int v0, v10, v11

    .line 472
    .local v0, "dh":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 473
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 475
    :cond_1
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v3, v10

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int v11, v0, v11

    sub-int/2addr v11, v6

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    .line 476
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    sub-int v11, v9, v1

    sub-int v12, v3, v0

    invoke-virtual {v10, v11, v12, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 477
    return-void

    .line 454
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v3    # "h":I
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "th":I
    .end local v8    # "tw":I
    .end local v9    # "w":I
    :cond_2
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 455
    .local v2, "f":Ljava/text/NumberFormat;
    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v10, v10, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "str":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public set(Lcom/android/internal/statusbar/StatusBarIcon;)Z
    .locals 8
    .param p1, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 276
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    .line 277
    :goto_0
    if-eqz v0, :cond_2

    .line 278
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    if-ne v5, v6, :cond_1

    const/4 v1, 0x1

    .line 279
    .local v1, "levelEquals":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v5, :cond_4

    .line 280
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-boolean v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v5, v6, :cond_3

    const/4 v3, 0x1

    .line 281
    .local v3, "visibilityEquals":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v5, :cond_6

    .line 282
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-ne v5, v6, :cond_5

    const/4 v2, 0x1

    .line 283
    .local v2, "numberEquals":Z
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 284
    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    if-nez v0, :cond_8

    .line 286
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    move-result v5

    if-nez v5, :cond_7

    return v4

    .line 276
    .end local v1    # "levelEquals":Z
    .end local v2    # "numberEquals":Z
    .end local v3    # "visibilityEquals":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "iconEquals":Z
    goto :goto_0

    .line 278
    .end local v0    # "iconEquals":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "levelEquals":Z
    goto :goto_1

    .line 277
    .end local v1    # "levelEquals":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "levelEquals":Z
    goto :goto_1

    .line 280
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "visibilityEquals":Z
    goto :goto_2

    .line 279
    .end local v3    # "visibilityEquals":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "visibilityEquals":Z
    goto :goto_2

    .line 282
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "numberEquals":Z
    goto :goto_3

    .line 281
    .end local v2    # "numberEquals":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "numberEquals":Z
    goto :goto_3

    .line 288
    :cond_7
    const v5, 0x7f0a0117

    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 290
    :cond_8
    if-nez v1, :cond_9

    .line 291
    iget v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageLevel(I)V

    .line 294
    :cond_9
    if-nez v2, :cond_b

    .line 295
    iget v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-lez v5, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 296
    const v6, 0x7f050051

    .line 295
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 297
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_a

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 299
    const v6, 0x7f08019d

    .line 298
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 301
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    .line 306
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    .line 308
    :cond_b
    if-nez v3, :cond_c

    .line 309
    iget-boolean v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 311
    :cond_c
    const/4 v4, 0x1

    return v4

    .line 303
    :cond_d
    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 304
    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    goto :goto_4

    .line 309
    :cond_e
    const/16 v4, 0x8

    goto :goto_5
.end method

.method public setDark(ZZJ)V
    .locals 7
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    new-instance v1, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$Lambda$8GVkhItfkCKqtDvTlHTILsytvsQ$2;-><init>(Ljava/lang/Object;)V

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setIntensityDark(Ljava/util/function/Consumer;ZZJ)V

    .line 783
    return-void
.end method

.method public setDecorColor(I)V
    .locals 0
    .param p1, "iconTint"    # I

    .prologue
    .line 536
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    .line 538
    return-void
.end method

.method public setDotAppearAmount(F)V
    .locals 1
    .param p1, "dotAppearAmount"    # F

    .prologue
    .line 754
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 755
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    .line 756
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    .line 758
    :cond_0
    return-void
.end method

.method public setIconAppearAmount(F)V
    .locals 1
    .param p1, "iconAppearAmount"    # F

    .prologue
    .line 739
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 740
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->invalidate()V

    .line 743
    :cond_0
    return-void
.end method

.method public setIconColor(IZ)V
    .locals 4
    .param p1, "iconColor"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 579
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    if-eq v0, p1, :cond_2

    .line 580
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 584
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-ne v0, p1, :cond_1

    .line 585
    return-void

    .line 587
    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-eqz v0, :cond_3

    .line 588
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 589
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$3;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 605
    :cond_2
    :goto_0
    return-void

    .line 602
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    goto :goto_0

    .line 589
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Landroid/app/Notification;)V

    .line 236
    :cond_0
    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    .line 774
    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 556
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    .line 557
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    .line 558
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    .line 559
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setColor(I)V

    .line 561
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 762
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;->onVisibilityChanged(I)V

    .line 766
    :cond_0
    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    .line 654
    return-void
.end method

.method public setVisibleState(IZLjava/lang/Runnable;)V
    .locals 11
    .param p1, "visibleState"    # I
    .param p2, "animate"    # Z
    .param p3, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v10, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 662
    const/4 v3, 0x0

    .line 663
    .local v3, "runnableAdded":Z
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    if-eq p1, v5, :cond_5

    .line 664
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 665
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_0

    .line 666
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 668
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_1

    .line 669
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 671
    :cond_1
    if-eqz p2, :cond_8

    .line 672
    const/4 v4, 0x0

    .line 673
    .local v4, "targetAmount":F
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 674
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    if-nez p1, :cond_2

    .line 675
    const/high16 v4, 0x3f800000    # 1.0f

    .line 676
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 678
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconAppearAmount()F

    move-result v0

    .line 679
    .local v0, "currentAmount":F
    cmpl-float v5, v4, v0

    if-eqz v5, :cond_3

    .line 680
    sget-object v5, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Landroid/util/Property;

    new-array v6, v10, [F

    .line 681
    aput v0, v6, v8

    aput v4, v6, v9

    .line 680
    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 682
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 683
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 684
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/systemui/statusbar/StatusBarIconView$4;

    invoke-direct {v6, p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView$4;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 691
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 692
    const/4 v3, 0x1

    .line 695
    :cond_3
    if-nez p1, :cond_7

    const/high16 v4, 0x40000000    # 2.0f

    .line 696
    :goto_0
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 697
    if-ne p1, v9, :cond_4

    .line 698
    const/high16 v4, 0x3f800000    # 1.0f

    .line 699
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 701
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDotAppearAmount()F

    move-result v0

    .line 702
    cmpl-float v5, v4, v0

    if-eqz v5, :cond_5

    .line 703
    sget-object v5, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Landroid/util/Property;

    new-array v6, v10, [F

    .line 704
    aput v0, v6, v8

    aput v4, v6, v9

    .line 703
    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    .line 705
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 706
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 707
    xor-int/lit8 v2, v3, 0x1

    .line 708
    .local v2, "runRunnable":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/systemui/statusbar/StatusBarIconView$5;

    invoke-direct {v6, p0, v2, p3}, Lcom/android/systemui/statusbar/StatusBarIconView$5;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;ZLjava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 717
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 718
    const/4 v3, 0x1

    .line 727
    .end local v0    # "currentAmount":F
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "runRunnable":Z
    .end local v4    # "targetAmount":F
    :cond_5
    :goto_1
    if-nez v3, :cond_6

    .line 728
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->runRunnable(Ljava/lang/Runnable;)V

    .line 730
    :cond_6
    return-void

    .line 695
    .restart local v0    # "currentAmount":F
    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v4    # "targetAmount":F
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 721
    .end local v0    # "currentAmount":F
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v4    # "targetAmount":F
    :cond_8
    if-nez p1, :cond_9

    move v5, v6

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconAppearAmount(F)V

    .line 722
    if-ne p1, v9, :cond_a

    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDotAppearAmount(F)V

    goto :goto_1

    :cond_9
    move v5, v7

    .line 721
    goto :goto_2

    .line 723
    :cond_a
    if-nez p1, :cond_b

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_3

    :cond_b
    move v6, v7

    .line 724
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StatusBarIconView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 490
    const-string/jumbo v1, " notification="

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 490
    const-string/jumbo v1, ")"

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawable()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    .line 316
    return-void
.end method
