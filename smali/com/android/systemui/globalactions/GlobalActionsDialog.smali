.class Lcom/android/systemui/globalactions/GlobalActionsDialog;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$1;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$2;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$3;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$4;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$5;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;,
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

.field private mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

.field private final mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p1, "-value"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p1, "-value"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->handleShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->refreshSilentMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    .line 118
    iput-boolean v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    .line 119
    sget-object v4, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    iput-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 120
    iput-boolean v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mIsWaitingForEcmExit:Z

    .line 1092
    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1113
    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1124
    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$3;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1133
    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1145
    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialog$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$5;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 130
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    .line 132
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "audio"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 134
    const-string/jumbo v4, "dreams"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 133
    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 137
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 145
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    .line 149
    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 150
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v4, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 151
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 152
    const-string/jumbo v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 153
    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 151
    invoke-virtual {v4, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 155
    .local v3, "vibrator":Landroid/os/Vibrator;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    .line 157
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 158
    const v5, 0x1120110

    .line 157
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    .line 160
    new-instance v4, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {v4, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 161
    return-void

    :cond_0
    move v4, v5

    .line 155
    goto :goto_0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;>;"
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 605
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 606
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 607
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 608
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 609
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    if-nez v6, :cond_2

    .line 611
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    :goto_1
    const/4 v7, 0x1

    .line 612
    .local v7, "isCurrentUser":Z
    :goto_2
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 614
    :goto_3
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 617
    if-eqz v7, :cond_5

    const-string/jumbo v1, " \u2714"

    .line 616
    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 615
    const v2, 0x10803e4

    move-object v1, p0

    .line 614
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 634
    .local v0, "switchToUser":Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    .end local v0    # "switchToUser":Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
    .end local v7    # "isCurrentUser":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "isCurrentUser":Z
    goto :goto_2

    .end local v7    # "isCurrentUser":Z
    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 613
    .restart local v7    # "isCurrentUser":Z
    :cond_3
    const/4 v3, 0x0

    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 616
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string/jumbo v1, "Primary"

    goto :goto_4

    .line 617
    :cond_5
    const-string/jumbo v1, ""

    goto :goto_5

    .line 638
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "isCurrentUser":Z
    .end local v9    # "user$iterator":Ljava/util/Iterator;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1182
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1183
    const-string/jumbo v3, "airplane_mode_on"

    .line 1184
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 1181
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1185
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1187
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1188
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1189
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 1190
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1192
    :cond_0
    return-void

    .line 1184
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1190
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_1
.end method

.method private createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    .locals 13

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    .line 223
    :goto_0
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;

    .line 224
    const v2, 0x1080388

    .line 225
    const v3, 0x108038a

    .line 226
    const v4, 0x1040255

    .line 227
    const v5, 0x1040254

    .line 228
    const v6, 0x1040253

    move-object v1, p0

    .line 223
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$6;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->onAirplaneModeChanged()V

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    .line 267
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 268
    const v1, 0x1070035

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, "defaultActions":[Ljava/lang/String;
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 271
    .local v8, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v0, v9

    if-ge v11, v0, :cond_d

    .line 272
    aget-object v7, v9, v11

    .line 273
    .local v7, "actionKey":Ljava/lang/String;
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 221
    .end local v7    # "actionKey":Ljava/lang/String;
    .end local v8    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v9    # "defaultActions":[Ljava/lang/String;
    .end local v11    # "i":I
    :cond_0
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    goto :goto_0

    .line 277
    .restart local v7    # "actionKey":Ljava/lang/String;
    .restart local v8    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v9    # "defaultActions":[Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_1
    const-string/jumbo v0, "power"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$PowerAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_2
    :goto_3
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 279
    :cond_3
    const-string/jumbo v0, "airplane"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 281
    :cond_4
    const-string/jumbo v0, "bugreport"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 283
    const-string/jumbo v1, "bugreport_in_power_menu"

    const/4 v2, 0x0

    .line 282
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->isCurrentUserOwner()Z

    move-result v0

    .line 282
    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 286
    :cond_5
    const-string/jumbo v0, "silent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 287
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 290
    :cond_6
    const-string/jumbo v0, "users"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    const-string/jumbo v0, "fw.power_user_switcher"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 294
    :cond_7
    const-string/jumbo v0, "settings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 295
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getSettingsAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 296
    :cond_8
    const-string/jumbo v0, "lockdown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 297
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getLockdownAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 298
    :cond_9
    const-string/jumbo v0, "voiceassist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 299
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getVoiceAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 300
    :cond_a
    const-string/jumbo v0, "assist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 301
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 302
    :cond_b
    const-string/jumbo v0, "restart"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 303
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 305
    :cond_c
    const-string/jumbo v0, "GlobalActionsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid global action key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 311
    .end local v7    # "actionKey":Ljava/lang/String;
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 312
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getEmergencyAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_e
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .line 317
    new-instance v12, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 318
    .local v12, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 319
    iput-object p0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 322
    new-instance v10, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0, v12}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 323
    .local v10, "dialog":Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 325
    invoke-virtual {v10}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 326
    invoke-virtual {v10}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 327
    invoke-virtual {v10}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 328
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 339
    invoke-virtual {v10}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 341
    invoke-virtual {v10, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 343
    return-object v10
.end method

.method private getAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    .prologue
    .line 521
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;

    const v1, 0x10802fb

    .line 522
    const v2, 0x1040246

    .line 521
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 592
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getEmergencyAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    .prologue
    .line 501
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;

    const v1, 0x10802a1

    .line 502
    const v2, 0x1040248

    .line 501
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$9;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getLockdownAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    .prologue
    .line 565
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;

    const v1, 0x108002f

    .line 566
    const v2, 0x104024a

    .line 565
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$12;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    .prologue
    .line 478
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;

    const v1, 0x1080455

    .line 479
    const v2, 0x104024d

    .line 478
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 3

    .prologue
    .line 543
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$11;

    const v1, 0x1080474

    .line 544
    const v2, 0x1040251

    .line 543
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$11;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->awakenIfNecessary()V

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->prepareDialog()V

    .line 198
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    .line 198
    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    xor-int/lit8 v1, v1, 0x1

    .line 198
    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->onPress()V

    .line 210
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 204
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "ActionsDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 206
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->show()V

    .line 207
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsShown()V

    .line 208
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 600
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    .line 1167
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasTelephony:Z

    if-eqz v1, :cond_0

    return-void

    .line 1170
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1171
    const-string/jumbo v2, "airplane_mode_on"

    .line 1172
    const/4 v3, 0x0

    .line 1169
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1172
    const/4 v2, 0x1

    .line 1169
    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1173
    .local v0, "airplaneModeOn":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 1174
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    .line 1175
    return-void

    .line 1169
    .end local v0    # "airplaneModeOn":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "airplaneModeOn":Z
    goto :goto_0

    .line 1173
    :cond_2
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_1
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->refreshSilentMode()V

    .line 642
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    .line 643
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->notifyDataSetChanged()V

    .line 644
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 645
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 646
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 647
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 649
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 652
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 655
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    check-cast v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    .line 656
    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    .line 655
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    .line 658
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    .line 654
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "silentModeOn":Z
    goto :goto_0

    .line 656
    :cond_2
    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 676
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->onPress()V

    .line 679
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {v1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsHidden()V

    .line 663
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v0

    .line 668
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "GlobalActionsDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v1, 0x0

    .line 168
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mKeyguardShowing:Z

    .line 169
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDeviceProvisioned:Z

    .line 170
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    .line 172
    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->handleShow()V

    goto :goto_0
.end method
