.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainer$1;,
        Lcom/android/keyguard/KeyguardSecurityContainer$2;,
        Lcom/android/keyguard/KeyguardSecurityContainer$3;,
        Lcom/android/keyguard/KeyguardSecurityContainer$4;,
        Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

.field private static final DEBUG:Z


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMotDpmEnabled:Z

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field private final mShowFinalPasswordAttemptWarn:Z

.field private final mTurnOffScreenRunnable:Ljava/lang/Runnable;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardSecurityContainer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mTurnOffScreenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static synthetic -getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardSecurityContainer;II)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->reportFailedUnlockAttempt(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardSecurityContainer;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->stopAlarm(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->DEBUG:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 128
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mTurnOffScreenRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    .line 92
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 541
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$3;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 586
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$4;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 130
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 131
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    const v1, 0x7f050022

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mShowFinalPasswordAttemptWarn:Z

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 142
    const v1, 0x1120083

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotDpmEnabled:Z

    .line 144
    return-void
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 11
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v10, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 195
    .local v4, "securityViewIdForMode":I
    const/4 v6, 0x0

    .line 196
    .local v6, "view":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v1

    .line 197
    .local v1, "children":I
    const/4 v0, 0x0

    .local v0, "child":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 198
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v4, :cond_3

    .line 199
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v3

    .line 204
    .local v3, "layoutId":I
    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    .line 205
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 206
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "inflating id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v3, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 208
    .local v5, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 209
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;)V

    move-object v6, v5

    .line 210
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 213
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "v":Landroid/view/View;
    :cond_2
    return-object v6

    .line 197
    .end local v3    # "layoutId":I
    .restart local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 604
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 611
    const/4 v0, 0x0

    return v0

    .line 605
    :pswitch_0
    const v0, 0x7f0a0145

    return v0

    .line 606
    :pswitch_1
    const v0, 0x7f0a0146

    return v0

    .line 607
    :pswitch_2
    const v0, 0x7f0a0144

    return v0

    .line 608
    :pswitch_3
    const v0, 0x7f0a014a

    return v0

    .line 609
    :pswitch_4
    const v0, 0x7f0a014b

    return v0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private playAlarm(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x4

    .line 690
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 692
    .local v0, "alarmUri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 693
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 694
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 695
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 696
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 697
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v1

    .line 700
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "KeyguardSecurityView"

    const-string/jumbo v3, "Play error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportFailedUnlockAttempt(II)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    .line 350
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 351
    .local v4, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 353
    .local v2, "failedAttempts":I
    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reportFailedPatternAttempt: #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 357
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v7, 0x0

    invoke-virtual {v0, v7, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v3

    .line 359
    .local v3, "failedAttemptsBeforeWipe":I
    if-lez v3, :cond_5

    .line 360
    sub-int v5, v3, v2

    .line 363
    .local v5, "remainingBeforeWipe":I
    :goto_0
    const/4 v7, 0x5

    if-gt v5, v7, :cond_3

    .line 368
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v1

    .line 369
    .local v1, "expiringUser":I
    const/4 v6, 0x1

    .line 370
    .local v6, "userType":I
    if-ne v1, p1, :cond_6

    .line 372
    if-eqz v1, :cond_1

    .line 373
    const/4 v6, 0x3

    .line 378
    :cond_1
    :goto_1
    if-lez v5, :cond_8

    .line 380
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mShowFinalPasswordAttemptWarn:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    if-ne v5, v7, :cond_7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 381
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const v8, 0x7f11028d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 382
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const v9, 0x7f11028c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 381
    invoke-direct {p0, v7, v8}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_2
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotDpmEnabled:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    .line 392
    rsub-int/lit8 v7, v5, 0x5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 393
    invoke-static {v7}, Lcom/android/internal/widget/MotDpmLockPatternUtils;->shouldShowPasswordRecoveryDialog(Landroid/content/Context;)Z

    move-result v7

    .line 391
    if-eqz v7, :cond_3

    .line 395
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showRecoveryDialog()V

    .line 405
    .end local v1    # "expiringUser":I
    .end local v6    # "userType":I
    :cond_3
    :goto_3
    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedStrongAuthUnlockAttempt(I)V

    .line 406
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 407
    if-lez p2, :cond_4

    .line 408
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showTimeoutDialog(II)V

    .line 409
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mTurnOffScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotDpmEnabled:Z

    if-eqz v7, :cond_4

    .line 412
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 411
    invoke-static {v7}, Lcom/android/internal/widget/MotDpmLockPatternUtils;->shouldShowPasswordRecoveryDialog(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 413
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showRecoveryDialog()V

    .line 417
    :cond_4
    return-void

    .line 361
    .end local v5    # "remainingBeforeWipe":I
    :cond_5
    const v5, 0x7fffffff

    .restart local v5    # "remainingBeforeWipe":I
    goto :goto_0

    .line 375
    .restart local v1    # "expiringUser":I
    .restart local v6    # "userType":I
    :cond_6
    const/16 v7, -0x2710

    if-eq v1, v7, :cond_1

    .line 376
    const/4 v6, 0x2

    goto :goto_1

    .line 384
    :cond_7
    invoke-direct {p0, v2, v5, v6}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    .line 385
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mTurnOffScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 401
    :cond_8
    const-string/jumbo v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Too many unlock attempts; user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " will be wiped!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-direct {p0, v2, v6}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(II)V

    goto :goto_3
.end method

.method private showAlmostAtWipeDialog(III)V
    .locals 6
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I
    .param p3, "userType"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "message":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 327
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const v2, 0x7f110288

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void

    .line 315
    .restart local v0    # "message":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    .line 316
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    .line 315
    const v3, 0x7f110287

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 319
    .local v0, "message":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 319
    const v3, 0x7f110284

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 323
    .local v0, "message":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 323
    const v3, 0x7f110283

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 239
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 240
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 241
    .local v3, "v":Landroid/os/Vibrator;
    const/4 v4, 0x3

    new-array v2, v4, [J

    .local v2, "pattern":[J
    fill-array-data v2, :array_0

    .line 242
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 245
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityContainer$5;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/keyguard/KeyguardSecurityContainer$5;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Landroid/media/MediaPlayer;Landroid/os/Vibrator;)V

    const v6, 0x7f110381

    .line 242
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 252
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityContainer$6;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/keyguard/KeyguardSecurityContainer$6;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Landroid/media/MediaPlayer;Landroid/os/Vibrator;)V

    .line 242
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 261
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 262
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 265
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 266
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->playAlarm(Landroid/media/MediaPlayer;)V

    .line 267
    invoke-virtual {v3, v2, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 269
    return-void

    .line 241
    nop

    :array_0
    .array-data 8
        0x0
        0x1f4
        0xc8
    .end array-data
.end method

.method private showRecoveryDialog()V
    .locals 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/motepm/util/ExternalResources;->getInstance(Landroid/content/Context;)Lcom/motorola/motepm/util/ExternalResources;

    move-result-object v0

    .line 275
    .local v0, "res":Lcom/motorola/motepm/util/ExternalResources;
    sget-object v1, Lcom/motorola/motepm/R$string;->password_recovery_dialog_title:Lcom/motorola/motepm/util/ExternalResources$StringResourceId;

    invoke-virtual {v0, v1}, Lcom/motorola/motepm/util/ExternalResources;->getString(Lcom/motorola/motepm/util/ExternalResources$StringResourceId;)Ljava/lang/String;

    move-result-object v1

    .line 276
    sget-object v2, Lcom/motorola/motepm/R$string;->password_recovery_dialog_message:Lcom/motorola/motepm/util/ExternalResources$StringResourceId;

    invoke-virtual {v0, v2}, Lcom/motorola/motepm/util/ExternalResources;->getString(Lcom/motorola/motepm/util/ExternalResources$StringResourceId;)Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 8
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 498
    sget-boolean v5, Lcom/android/keyguard/KeyguardSecurityContainer;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showSecurityScreen("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v5, :cond_1

    return-void

    .line 502
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v3

    .line 503
    .local v3, "oldView":Lcom/android/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v2

    .line 506
    .local v2, "newView":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v3, :cond_2

    .line 507
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 508
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v5}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 510
    :cond_2
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v5, :cond_3

    .line 511
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 512
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 516
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 518
    .local v0, "childCount":I
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 519
    .local v4, "securityViewIdForMode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 520
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 521
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    .line 526
    :cond_4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 527
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 528
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v5, :cond_6

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v5

    .line 527
    :goto_1
    invoke-interface {v6, p1, v5}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 529
    return-void

    .line 519
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private showTimeoutDialog(II)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v6, 0x0

    .line 281
    div-int/lit16 v2, p2, 0x3e8

    .line 282
    .local v2, "timeoutInSeconds":I
    const/4 v1, 0x0

    .line 284
    .local v1, "messageId":I
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 302
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 303
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 304
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 303
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "message":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void

    .line 286
    :pswitch_1
    const v1, 0x7f1102c8

    .line 287
    goto :goto_0

    .line 289
    :pswitch_2
    const v1, 0x7f1102c9

    .line 290
    goto :goto_0

    .line 292
    :pswitch_3
    const v1, 0x7f1102c7

    .line 293
    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showWipeDialog(II)V
    .locals 5
    .param p1, "attempts"    # I
    .param p2, "userType"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "message":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 346
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void

    .line 334
    .restart local v0    # "message":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 334
    const v3, 0x7f11028b

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 338
    .local v0, "message":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 339
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 338
    const v3, 0x7f11028a

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 342
    .local v0, "message":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 342
    const v3, 0x7f110289

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private stopAlarm(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 706
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 708
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 709
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    const/4 p1, 0x0

    .line 715
    .end local p1    # "mp":Landroid/media/MediaPlayer;
    :cond_0
    :goto_0
    return-void

    .line 712
    .restart local p1    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "KeyguardSecurityView"

    const-string/jumbo v2, "Stop error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 217
    instance-of v1, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 218
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 219
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 220
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 224
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a KeyguardSecurityView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 187
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 190
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method protected getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 615
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 622
    const/4 v0, 0x0

    return v0

    .line 616
    :pswitch_0
    const v0, 0x7f0d0047

    return v0

    .line 617
    :pswitch_1
    const v0, 0x7f0d0048

    return v0

    .line 618
    :pswitch_2
    const v0, 0x7f0d0046

    return v0

    .line 619
    :pswitch_3
    const v0, 0x7f0d004a

    return v0

    .line 620
    :pswitch_4
    const v0, 0x7f0d004b

    return v0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 227
    const v0, 0x7f0a02de

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 229
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 162
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 654
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 235
    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 148
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityView;->showMessage(Ljava/lang/String;I)V

    .line 681
    :cond_0
    return-void
.end method

.method showNextSecurityScreenOrFinish(ZI)Z
    .locals 7
    .param p1, "authenticated"    # Z
    .param p2, "targetUserId"    # I

    .prologue
    .line 439
    sget-boolean v4, Lcom/android/keyguard/KeyguardSecurityContainer;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "KeyguardSecurityView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showNextSecurityScreenOrFinish("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    const/4 v0, 0x0

    .line 441
    .local v0, "finish":Z
    const/4 v3, 0x0

    .line 442
    .local v3, "strongAuth":Z
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 443
    const/4 v0, 0x1

    .line 479
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 481
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 482
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.motorola.UNLOCK_SUCCESS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const/high16 v4, 0x1000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v4, v3, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish(ZI)V

    .line 488
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return v0

    .line 444
    :cond_3
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v5, :cond_5

    .line 445
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 446
    .local v2, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v2, :cond_4

    .line 447
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 451
    .end local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_5
    if-eqz p1, :cond_1

    .line 452
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 474
    const-string/jumbo v4, "KeyguardSecurityView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad security screen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", fail safe"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 456
    :pswitch_0
    const/4 v3, 0x1

    .line 457
    const/4 v0, 0x1

    .line 458
    goto :goto_0

    .line 463
    :pswitch_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 464
    .restart local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v4, :cond_6

    .line 465
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 466
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 465
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 464
    if-eqz v4, :cond_7

    .line 467
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_0

    .line 469
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4
    .param p1, "turningOff"    # Z

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 426
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 425
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 427
    .local v0, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-boolean v1, Lcom/android/keyguard/KeyguardSecurityContainer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 429
    return-void
.end method

.method public showPromptReason(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_1

    .line 669
    if-eqz p1, :cond_0

    .line 670
    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Strong auth required, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->showPromptReason(I)V

    .line 674
    :cond_1
    return-void
.end method

.method public startAppearAnimation()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    .line 168
    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
