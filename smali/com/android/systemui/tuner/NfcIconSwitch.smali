.class public Lcom/android/systemui/tuner/NfcIconSwitch;
.super Landroid/support/v14/preference/SwitchPreference;
.source "NfcIconSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/NfcIconSwitch$1;
    }
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/tuner/NfcIconSwitch;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/tuner/NfcIconSwitch;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/tuner/NfcIconSwitch;->updateSwitch()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lcom/android/systemui/tuner/NfcIconSwitch$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/NfcIconSwitch$1;-><init>(Lcom/android/systemui/tuner/NfcIconSwitch;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/NfcIconSwitch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    new-instance v0, Lcom/android/systemui/tuner/NfcIconSwitch$2;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NfcIconSwitch;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tuner/NfcIconSwitch$2;-><init>(Lcom/android/systemui/tuner/NfcIconSwitch;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/NfcIconSwitch;->mSettingObserver:Landroid/database/ContentObserver;

    .line 47
    return-void
.end method

.method private updateSwitch()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NfcIconSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isNfcIconEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NfcIconSwitch;->setChecked(Z)V

    .line 87
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 6

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onAttached()V

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NfcIconSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tuner/NfcIconSwitch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NfcIconSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 58
    const-string/jumbo v2, "show_nfc_icon_on_systemui"

    invoke-static {v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/android/systemui/tuner/NfcIconSwitch;->mSettingObserver:Landroid/database/ContentObserver;

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, -0x2

    .line 57
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/tuner/NfcIconSwitch;->updateSwitch()V

    .line 62
    return-void
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NfcIconSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/NfcIconSwitch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/tuner/NfcIconSwitch;->mSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NfcIconSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/NfcIconSwitch;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NfcIconSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setNfcIconEnabled(Landroid/content/Context;Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NfcIconSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0xe9

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NfcIconSwitch;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_0
    const/16 v0, 0xea

    goto :goto_0
.end method
