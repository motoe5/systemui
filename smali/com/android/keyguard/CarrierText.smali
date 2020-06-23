.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$1;,
        Lcom/android/keyguard/CarrierText$CarrierTextForSim;,
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;,
        Lcom/android/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

.field private static final synthetic -com-android-keyguard-CarrierText$StatusModeSwitchesValues:[I

.field private static final DEBUG:Z

.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mIsEmergencyCallCapable:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-IccCardConstants$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/android/keyguard/CarrierText;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-keyguard-CarrierText$StatusModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com-android-keyguard-CarrierText$StatusModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CarrierText;->-com-android-keyguard-CarrierText$StatusModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/CarrierText$StatusMode;->values()[Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimIOError:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/android/keyguard/CarrierText;->-com-android-keyguard-CarrierText$StatusModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/CarrierText;->DEBUG:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v2, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 104
    const v3, 0x112011b

    .line 103
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 107
    sget-object v3, Lcom/android/keyguard/R$styleable;->CarrierText:[I

    .line 106
    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 111
    .local v1, "useAllCaps":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    new-instance v2, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 115
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 116
    return-void

    .line 110
    .end local v1    # "useAllCaps":Z
    :catchall_0
    move-exception v2

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    throw v2
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 477
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    .line 478
    .local v0, "plmnValid":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    .line 479
    .local v1, "spnValid":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 481
    :cond_0
    if-eqz v0, :cond_1

    .line 482
    return-object p0

    .line 483
    :cond_1
    if-eqz v1, :cond_2

    .line 484
    return-object p1

    .line 486
    :cond_2
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "carrierText":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 362
    .local v1, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    invoke-static {}, Lcom/android/keyguard/CarrierText;->-getcom-android-keyguard-CarrierText$StatusModeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 412
    .end local v0    # "carrierText":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 364
    .restart local v0    # "carrierText":Ljava/lang/CharSequence;
    :pswitch_0
    move-object v0, p2

    .line 365
    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 370
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_1
    const-string/jumbo v0, ""

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 375
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const v3, 0x7f11026d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 374
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 379
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_3
    const/4 v0, 0x0

    .line 380
    goto :goto_0

    .line 383
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 384
    const v3, 0x7f110277

    .line 383
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 388
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_5
    const/4 v0, 0x0

    .line 389
    goto :goto_0

    .line 393
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11027c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 392
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 399
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11027d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 398
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 406
    .local v0, "carrierText":Ljava/lang/CharSequence;
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11027b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 405
    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 432
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    .line 437
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_1

    .line 438
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 443
    .local v0, "missingAndNotProvisioned":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 444
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 437
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "missingAndNotProvisioned":Z
    goto :goto_0

    .line 438
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "missingAndNotProvisioned":Z
    goto :goto_0

    .line 436
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "missingAndNotProvisioned":Z
    goto :goto_0

    .line 448
    :cond_4
    invoke-static {}, Lcom/android/keyguard/CarrierText;->-getcom-android-internal-telephony-IccCardConstants$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 473
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 450
    :pswitch_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 454
    :pswitch_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 457
    :pswitch_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 459
    :pswitch_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 461
    :pswitch_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 463
    :pswitch_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 465
    :pswitch_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 467
    :pswitch_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 470
    :pswitch_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimIOError:Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v1

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 421
    invoke-static {p1, p2}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 423
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 319
    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 327
    :goto_0
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 325
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 335
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 309
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 310
    const v2, 0x10402e3

    .line 309
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 311
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 312
    .local v0, "shouldMarquee":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 313
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 339
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 342
    if-nez p2, :cond_0

    .line 343
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method protected updateCarrierText()V
    .locals 33

    .prologue
    .line 140
    const/4 v6, 0x1

    .line 141
    .local v6, "allSimsMissing":Z
    const/4 v7, 0x0

    .line 142
    .local v7, "anySimReadyAndInService":Z
    const/4 v12, 0x0

    .line 145
    .local v12, "displayText":Ljava/lang/CharSequence;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v21, "slotTextList":Ljava/util/List;, "Ljava/util/List<Lcom/android/keyguard/CarrierText$CarrierTextForSim;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v26

    .line 147
    .local v26, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    .line 148
    .local v4, "N":I
    sget-boolean v30, Lcom/android/keyguard/CarrierText;->DEBUG:Z

    if-eqz v30, :cond_0

    const-string/jumbo v30, "CarrierText"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "updateCarrierText(): "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v4, :cond_9

    .line 150
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v25

    .line 151
    .local v25, "subId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v20

    .line 152
    .local v20, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 155
    .local v8, "carrierName":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBroadcastSPNForSubId(I)Ljava/lang/String;

    move-result-object v23

    .line 156
    .local v23, "spn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBroadcastPLMNForSubId(I)Ljava/lang/String;

    move-result-object v19

    .line 157
    .local v19, "plmn":Ljava/lang/String;
    if-eqz v23, :cond_1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_1

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_1

    .line 158
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    move-object/from16 v8, v23

    .line 163
    :cond_1
    :goto_1
    if-eqz v19, :cond_2

    const-string/jumbo v30, "rejectCode"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 164
    const-string/jumbo v8, ""

    .line 167
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 168
    .local v9, "carrierTextForSimState":Ljava/lang/CharSequence;
    sget-boolean v30, Lcom/android/keyguard/CarrierText;->DEBUG:Z

    if-eqz v30, :cond_3

    .line 169
    const-string/jumbo v30, "CarrierText"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Handling (subId="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "): "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_3
    if-eqz v9, :cond_4

    .line 172
    const/4 v6, 0x0

    .line 173
    new-instance v31, Lcom/android/keyguard/CarrierText$CarrierTextForSim;

    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v32

    .line 174
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v30

    .line 173
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v32

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/keyguard/CarrierText$CarrierTextForSim;-><init>(Lcom/android/keyguard/CarrierText;IILjava/lang/CharSequence;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_4
    sget-object v30, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    move-object/from16 v30, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/ServiceState;

    .line 178
    .local v24, "ss":Landroid/telephony/ServiceState;
    if-eqz v24, :cond_7

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v30

    if-nez v30, :cond_7

    .line 181
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v30

    const/16 v31, 0x12

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v30

    if-eqz v30, :cond_7

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_7

    .line 185
    :cond_5
    sget-boolean v30, Lcom/android/keyguard/CarrierText;->DEBUG:Z

    if-eqz v30, :cond_6

    .line 186
    const-string/jumbo v30, "CarrierText"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "SIM ready and in service: subId="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", ss="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_6
    const/4 v7, 0x1

    .line 149
    .end local v24    # "ss":Landroid/telephony/ServiceState;
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 159
    .end local v9    # "carrierTextForSimState":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v19, v31, v32

    const/16 v32, 0x1

    aput-object v23, v31, v32

    const v32, 0x7f110175

    move-object/from16 v0, v30

    move/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 195
    .end local v8    # "carrierName":Ljava/lang/CharSequence;
    .end local v19    # "plmn":Ljava/lang/String;
    .end local v20    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v23    # "spn":Ljava/lang/String;
    .end local v25    # "subId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInvalidCards()Ljava/util/HashMap;

    move-result-object v16

    .line 196
    .local v16, "invalidCards":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;>;"
    sget-boolean v30, Lcom/android/keyguard/CarrierText;->DEBUG:Z

    if-eqz v30, :cond_a

    const-string/jumbo v30, "CarrierText"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Currently invalidCards: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_e

    .line 198
    const/4 v6, 0x0

    .line 199
    const-string/jumbo v28, ""

    .line 200
    .local v28, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_b

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x10401d5

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v28

    .line 206
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "data$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 207
    .local v10, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 208
    .restart local v25    # "subId":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;

    .line 209
    .local v15, "invalidCardData":Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;
    iget-object v0, v15, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;->plmn:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_c

    .line 210
    iget-object v0, v15, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;->plmn:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 212
    :cond_c
    sget-object v30, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 213
    .restart local v9    # "carrierTextForSimState":Ljava/lang/CharSequence;
    new-instance v30, Lcom/android/keyguard/CarrierText$CarrierTextForSim;

    iget v0, v15, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;->slotId:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/keyguard/CarrierText$CarrierTextForSim;-><init>(Lcom/android/keyguard/CarrierText;IILjava/lang/CharSequence;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    const-string/jumbo v28, ""

    goto :goto_2

    .line 218
    .end local v9    # "carrierTextForSimState":Ljava/lang/CharSequence;
    .end local v10    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;>;"
    .end local v15    # "invalidCardData":Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;
    .end local v25    # "subId":I
    :cond_d
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 221
    .end local v11    # "data$iterator":Ljava/util/Iterator;
    .end local v28    # "text":Ljava/lang/CharSequence;
    :cond_e
    sget-boolean v30, Lcom/android/keyguard/CarrierText;->DEBUG:Z

    if-eqz v30, :cond_f

    const-string/jumbo v30, "CarrierText"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "slotTextList: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_10

    const/16 v17, 0x1

    .line 224
    .local v17, "isLTR":Z
    :goto_3
    if-eqz v17, :cond_11

    .line 225
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .end local v12    # "displayText":Ljava/lang/CharSequence;
    .local v29, "text$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_15

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/keyguard/CarrierText$CarrierTextForSim;

    .line 226
    .local v27, "text":Lcom/android/keyguard/CarrierText$CarrierTextForSim;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->carrierTextForSimState:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v12, v0}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .local v12, "displayText":Ljava/lang/CharSequence;
    goto :goto_4

    .line 223
    .end local v17    # "isLTR":Z
    .end local v27    # "text":Lcom/android/keyguard/CarrierText$CarrierTextForSim;
    .end local v29    # "text$iterator":Ljava/util/Iterator;
    .local v12, "displayText":Ljava/lang/CharSequence;
    :cond_10
    const/16 v17, 0x0

    .restart local v17    # "isLTR":Z
    goto :goto_3

    .line 229
    :cond_11
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v22

    .line 230
    .local v22, "slotTextListSize":I
    if-lez v22, :cond_14

    .line 231
    add-int/lit8 v14, v22, -0x1

    .end local v12    # "displayText":Ljava/lang/CharSequence;
    :goto_5
    if-ltz v14, :cond_13

    .line 232
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/keyguard/CarrierText$CarrierTextForSim;

    .line 233
    .restart local v27    # "text":Lcom/android/keyguard/CarrierText$CarrierTextForSim;
    if-eqz v27, :cond_12

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->carrierTextForSimState:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    xor-int/lit8 v30, v30, 0x1

    if-eqz v30, :cond_12

    .line 236
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "\u2068"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->carrierTextForSimState:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\u2069"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "Text2":Ljava/lang/CharSequence;
    invoke-static {v12, v5}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 231
    .end local v5    # "Text2":Ljava/lang/CharSequence;
    :cond_12
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 241
    .end local v27    # "text":Lcom/android/keyguard/CarrierText$CarrierTextForSim;
    :cond_13
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_14

    .line 244
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "\u202a"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\u202c"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 247
    :cond_14
    sget-boolean v30, Lcom/android/keyguard/CarrierText;->DEBUG:Z

    if-eqz v30, :cond_15

    const-string/jumbo v30, "CarrierText"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "displayText = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v22    # "slotTextListSize":I
    :cond_15
    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasSIM()Z

    move-result v30

    xor-int/lit8 v6, v30, 0x1

    .line 253
    .end local v6    # "allSimsMissing":Z
    :goto_6
    if-eqz v6, :cond_16

    .line 254
    if-eqz v4, :cond_19

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f11026b

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v31

    .line 263
    const/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v30

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 300
    :cond_16
    :goto_7
    if-nez v7, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_17

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f110102

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 303
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return-void

    .line 252
    .restart local v6    # "allSimsMissing":Z
    :cond_18
    const/4 v6, 0x0

    goto :goto_6

    .line 268
    .end local v6    # "allSimsMissing":Z
    :cond_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v18

    .line 269
    .local v18, "numSlots":I
    sget-boolean v30, Lcom/android/keyguard/CarrierText;->DEBUG:Z

    if-eqz v30, :cond_1a

    const-string/jumbo v30, "CarrierText"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "No SIMs, no subscriptions, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " slots"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1a
    const/4 v13, 0x0

    .line 273
    .local v13, "emergencyOnly":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v30

    .line 274
    const v31, 0x10401d5

    .line 273
    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    .line 276
    .restart local v28    # "text":Ljava/lang/CharSequence;
    const/4 v14, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v14, v0, :cond_1c

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBroadcastPLMNForSlot(I)Ljava/lang/String;

    move-result-object v19

    .line 278
    .restart local v19    # "plmn":Ljava/lang/String;
    sget-boolean v30, Lcom/android/keyguard/CarrierText;->DEBUG:Z

    if-eqz v30, :cond_1b

    const-string/jumbo v30, "CarrierText"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Slot: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " ,PLMN: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1b
    if-eqz v19, :cond_1e

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 280
    const/4 v13, 0x1

    .line 281
    sget-boolean v30, Lcom/android/keyguard/CarrierText;->DEBUG:Z

    if-eqz v30, :cond_1c

    const-string/jumbo v30, "CarrierText"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Emergency only for slot: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v19    # "plmn":Ljava/lang/String;
    :cond_1c
    if-nez v13, :cond_1d

    .line 288
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v30

    .line 289
    const v31, 0x1040306

    .line 288
    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    .line 293
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f11026b

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .local v12, "displayText":Ljava/lang/CharSequence;
    goto/16 :goto_7

    .line 276
    .end local v12    # "displayText":Ljava/lang/CharSequence;
    .restart local v19    # "plmn":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8
.end method
