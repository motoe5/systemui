.class public Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;
.super Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.source "MotoSoundPhoneStatusBarPolicy.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMultiBTHelper:Lcom/motorola/multibluetooth/MultiBTFrameworkHelper;

.field private mState:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;I)I
    .locals 0
    .param p0, "-this"    # Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mState:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundUtil;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->TAG:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->DEBUG:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mState:I

    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->initMultiBT(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private initMultiBT(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v1, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy$1;

    invoke-direct {v1, p0}, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy$1;-><init>(Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;)V

    .line 78
    .local v1, "multiBTCallback":Lcom/motorola/multibluetooth/MultiBTFrameworkHelper$MultiBTCallback;
    :try_start_0
    new-instance v2, Lcom/motorola/multibluetooth/MultiBTFrameworkHelper;

    invoke-direct {v2, p1, v1}, Lcom/motorola/multibluetooth/MultiBTFrameworkHelper;-><init>(Landroid/content/Context;Lcom/motorola/multibluetooth/MultiBTFrameworkHelper$MultiBTCallback;)V

    iput-object v2, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mMultiBTHelper:Lcom/motorola/multibluetooth/MultiBTFrameworkHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected updateBluetooth()V
    .locals 5

    .prologue
    .line 53
    sget-boolean v2, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBluetooth: State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mMultiBTHelper:Lcom/motorola/multibluetooth/MultiBTFrameworkHelper;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mMultiBTHelper:Lcom/motorola/multibluetooth/MultiBTFrameworkHelper;

    if-nez v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->initMultiBT(Landroid/content/Context;)V

    .line 58
    :cond_2
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_3
    const v1, 0x7f080354

    .line 62
    .local v1, "iconId":I
    iget-object v2, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v3, 0x7f1100a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 64
    iget-object v2, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method
