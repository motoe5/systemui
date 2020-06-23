.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

.field protected final mContext:Landroid/content/Context;

.field private final mCurrentNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentUserSetup:Z

.field private final mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private mDockedStackExists:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field protected final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mIsSupportNewSpec:Z

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mManagedProfileIconVisible:Z

.field private mManagedProfileInQuietMode:Z

.field private final mNextAlarm:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private final mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabled:Z

.field private mNfcIconObserver:Landroid/database/ContentObserver;

.field private mNfcIconVisible:Z

.field private final mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mRemoveCastIconRunnable:Ljava/lang/Runnable;

.field private final mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private final mSlotAlarmClock:Ljava/lang/String;

.field protected final mSlotBluetooth:Ljava/lang/String;

.field private final mSlotCast:Ljava/lang/String;

.field private final mSlotDataSaver:Ljava/lang/String;

.field private final mSlotHeadset:Ljava/lang/String;

.field private final mSlotHotspot:Ljava/lang/String;

.field private final mSlotLocation:Ljava/lang/String;

.field private final mSlotManagedProfile:Ljava/lang/String;

.field private final mSlotNfc:Ljava/lang/String;

.field private final mSlotRotate:Ljava/lang/String;

.field private final mSlotTty:Ljava/lang/String;

.field private final mSlotVolume:Ljava/lang/String;

.field private final mSlotZen:Ljava/lang/String;

.field private final mTaskListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

.field private mVolumeVisible:Z

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenVisible:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/UserInfoController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->registerNfcIconObserver(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->unregisterNfcIconObserver(I)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCast()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateForegroundInstantApps()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHeadsetPlug(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateNFC(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateQuietState()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "PhoneStatusBarPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentNotifs:Landroid/util/ArraySet;

    .line 144
    const-class v8, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/UiOffloadThread;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 148
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 155
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    .line 156
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileInQuietMode:Z

    .line 946
    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 945
    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

    .line 973
    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 980
    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 988
    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 987
    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .line 1109
    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mTaskListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    .line 1117
    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1151
    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 171
    const-class v8, Lcom/android/systemui/statusbar/policy/CastController;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/CastController;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 172
    const-class v8, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 173
    const-class v8, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 174
    const-class v8, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarm:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 175
    const-string/jumbo v8, "alarm"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 176
    const-class v8, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 177
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserManager:Landroid/os/UserManager;

    .line 178
    const-class v8, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 179
    const-class v8, Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 180
    const-class v8, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 181
    const-class v8, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 182
    const-class v8, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 183
    const-class v8, Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 185
    const v8, 0x1040608

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    .line 186
    const v8, 0x104060e

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    .line 187
    const v8, 0x1040607

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    .line 188
    const v8, 0x104061c

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    .line 189
    const v8, 0x1040620

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    .line 190
    const v8, 0x104061d

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    .line 191
    const v8, 0x1040605

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    .line 193
    const v8, 0x1040612

    .line 192
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    .line 194
    const v8, 0x1040617

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 195
    const v8, 0x104060d

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    .line 196
    const v8, 0x104060c

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    .line 197
    const v8, 0x1040611

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    .line 199
    const v8, 0x1040614

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotNfc:Ljava/lang/String;

    .line 203
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 204
    .local v4, "res":Landroid/content/res/Resources;
    const v8, 0x7f050053

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    .line 208
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v8, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v8, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v8, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v8, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v8, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v8, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v1, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 225
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

    const-string/jumbo v10, "PhoneStatusBarPolicy"

    invoke-interface {v8, v9, v10}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v8, :cond_4

    .line 233
    const/4 v6, 0x0

    .line 234
    .local v6, "tty":I
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v5

    .line 235
    .local v5, "tm":Landroid/telecom/TelecomManager;
    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v6

    .line 237
    :cond_0
    if-eqz v6, :cond_3

    const/4 v7, 0x1

    .line 239
    .local v7, "ttyVis":Z
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    const v10, 0x7f080455

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 240
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 243
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    const v10, 0x7f0803e7

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 244
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 247
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    const v10, 0x7f080469

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 248
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 251
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    const v10, 0x7f080431

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 252
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 256
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    const v10, 0x7f0803ec

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 257
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 263
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 264
    const v9, 0x11200e0

    .line 263
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 265
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    const v10, 0x7f080427

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 266
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v10}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 267
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v8, v9}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    .line 273
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    .line 274
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v11, 0x7f110073

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 273
    const v11, 0x7f08042c

    invoke-interface {v8, v9, v11, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 275
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 278
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    .line 279
    const v10, 0x7f110056

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 278
    const v11, 0x7f080413

    invoke-interface {v8, v9, v11, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 280
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 285
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 286
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v11, 0x7f1100d8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 285
    const v11, 0x7f0803ea

    invoke-interface {v8, v9, v11, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 287
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 351
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTYMode()V

    .line 356
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v8, p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->addCallback(Ljava/lang/Object;)V

    .line 357
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v8, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addCallback(Ljava/lang/Object;)V

    .line 358
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v8, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 359
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v8, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 360
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {v8, v9}, Lcom/android/systemui/statusbar/policy/CastController;->addCallback(Ljava/lang/Object;)V

    .line 362
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarm:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-interface {v8, v9}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addCallback(Ljava/lang/Object;)V

    .line 363
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v8, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->addCallback(Ljava/lang/Object;)V

    .line 364
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v8, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    .line 365
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v8, p0}, Lcom/android/systemui/statusbar/policy/LocationController;->addCallback(Ljava/lang/Object;)V

    .line 367
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v8, v9}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v8, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 368
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mTaskListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v8, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 371
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-class v9, Landroid/app/NotificationManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 372
    .local v2, "noMan":Landroid/app/NotificationManager;
    invoke-virtual {v2}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_3
    if-ge v8, v10, :cond_8

    aget-object v3, v9, v8

    .line 373
    .local v3, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_2

    .line 374
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v12

    invoke-virtual {v2, v11, v12}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 372
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 237
    .end local v2    # "noMan":Landroid/app/NotificationManager;
    .end local v3    # "notification":Landroid/service/notification/StatusBarNotification;
    .end local v7    # "ttyVis":Z
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "ttyVis":Z
    goto/16 :goto_1

    .line 291
    .end local v5    # "tm":Landroid/telecom/TelecomManager;
    .end local v6    # "tty":I
    .end local v7    # "ttyVis":Z
    :cond_4
    const/4 v6, 0x0

    .line 292
    .restart local v6    # "tty":I
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v5

    .line 293
    .restart local v5    # "tm":Landroid/telecom/TelecomManager;
    if-eqz v5, :cond_5

    .line 294
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v6

    .line 295
    :cond_5
    if-eqz v6, :cond_7

    const/4 v7, 0x1

    .line 297
    .restart local v7    # "ttyVis":Z
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    const v10, 0x7f080330

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 298
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 301
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    const v10, 0x7f080309

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 302
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 305
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    const v10, 0x7f080340

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 306
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 309
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    const v10, 0x7f080328

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 310
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 314
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    const v10, 0x7f08030e

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 315
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 321
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 322
    const v9, 0x11200e0

    .line 321
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 323
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    const v10, 0x7f080320

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 324
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v10}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 325
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v8, v9}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    .line 331
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    .line 332
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v11, 0x7f110073

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 331
    const v11, 0x7f080324

    invoke-interface {v8, v9, v11, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 333
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 336
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    .line 337
    const v10, 0x7f110056

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 336
    const v11, 0x7f08031b

    invoke-interface {v8, v9, v11, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 338
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 343
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 344
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v11, 0x7f1100d8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 343
    const v11, 0x7f08030c

    invoke-interface {v8, v9, v11, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 345
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 295
    .end local v7    # "ttyVis":Z
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "ttyVis":Z
    goto/16 :goto_4

    .line 377
    .restart local v2    # "noMan":Landroid/app/NotificationManager;
    :cond_8
    new-instance v8, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$2;-><init>(Ljava/lang/Object;)V

    invoke-static {v8}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    .line 383
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotNfc:Ljava/lang/String;

    const v10, 0x7f08042e

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 384
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotNfc:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 385
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateNFC(Landroid/content/Intent;)V

    .line 389
    const/4 v8, -0x2

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->registerNfcIconObserver(I)V

    .line 391
    return-void

    .line 226
    .end local v2    # "noMan":Landroid/app/NotificationManager;
    .end local v5    # "tm":Landroid/telecom/TelecomManager;
    .end local v6    # "tty":I
    .end local v7    # "ttyVis":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private checkStack(ILandroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .locals 8
    .param p1, "stackId"    # I
    .param p3, "noMan"    # Landroid/app/NotificationManager;
    .param p4, "pm"    # Landroid/content/pm/IPackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/app/NotificationManager;",
            "Landroid/content/pm/IPackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 796
    .local p2, "notifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v7

    .line 797
    .local v7, "info":Landroid/app/ActivityManager$StackInfo;
    if-eqz v7, :cond_0

    iget-object v0, v7, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 798
    :cond_1
    iget-object v0, v7, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "pkg":Ljava/lang/String;
    iget v0, v7, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-direct {p0, p2, v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasNotif(Landroid/util/ArraySet;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 803
    iget v0, v7, Landroid/app/ActivityManager$StackInfo;->userId:I

    const/16 v2, 0x2000

    .line 802
    invoke-interface {p4, v1, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 804
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    iget v2, v7, Landroid/app/ActivityManager$StackInfo;->userId:I

    iget-object v0, v7, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v4, v7, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v5, v0, v4

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->postEphemeralNotif(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/app/NotificationManager;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "info":Landroid/app/ActivityManager$StackInfo;
    :cond_2
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v6

    .line 809
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method private getTaskIntent(II)Landroid/content/Intent;
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 874
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/ActivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 875
    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 874
    invoke-virtual {v2, v3, v4, p2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v1

    .line 876
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 877
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v2, p1, :cond_0

    .line 878
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    return-object v2

    .line 876
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 881
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private hasNotif(Landroid/util/ArraySet;Ljava/lang/String;I)Z
    .locals 2
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 885
    .local p1, "notifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 886
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentNotifs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 888
    const/4 v1, 0x1

    return v1

    .line 890
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isNfcIconEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1187
    const-string/jumbo v4, "show_nfc_icon_on_systemui"

    const/4 v5, -0x1

    const/4 v6, -0x2

    .line 1186
    invoke-static {v3, v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1189
    .local v0, "config":I
    if-gez v0, :cond_0

    .line 1190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1191
    const v2, 0x11200e2

    .line 1190
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1

    .line 1194
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private isWiredHeadsetOn()Z
    .locals 3

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 650
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarPolicy_38514(Landroid/app/NotificationManager;Landroid/util/Pair;)V
    .locals 3
    .param p0, "noMan"    # Landroid/app/NotificationManager;

    .prologue
    .line 788
    .local p1, "v":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 789
    new-instance v2, Landroid/os/UserHandle;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 788
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private postEphemeralNotif(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/app/NotificationManager;I)V
    .locals 22
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "noMan"    # Landroid/app/NotificationManager;
    .param p5, "taskId"    # I

    .prologue
    .line 815
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 816
    .local v12, "extras":Landroid/os/Bundle;
    const-string/jumbo v18, "android.substName"

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f110220

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 816
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentNotifs:Landroid/util/ArraySet;

    move-object/from16 v18, v0

    new-instance v19, Landroid/util/Pair;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {v18 .. v19}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f110221

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 820
    .local v14, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 821
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v20, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    const-string/jumbo v20, "package"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 821
    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v19

    .line 820
    const/16 v20, 0x0

    .line 822
    const/16 v21, 0x0

    .line 820
    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 823
    .local v8, "appInfoAction":Landroid/app/PendingIntent;
    new-instance v18, Landroid/app/Notification$Action$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f11010b

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v8}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    .line 826
    .local v6, "action":Landroid/app/Notification$Action;
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getTaskIntent(II)Landroid/content/Intent;

    move-result-object v9

    .line 827
    .local v9, "browserIntent":Landroid/content/Intent;
    new-instance v10, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 828
    .local v10, "builder":Landroid/app/Notification$Builder;
    if-eqz v9, :cond_0

    .line 830
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v18

    .line 831
    const/16 v19, 0x0

    .line 830
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 832
    const/16 v19, 0x200

    .line 830
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v18

    .line 833
    const/high16 v19, 0x10000000

    .line 830
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 836
    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 835
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 837
    .local v15, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 839
    .local v7, "aiaComponent":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/pm/IPackageManager;->getInstantAppInstallerComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 843
    .end local v7    # "aiaComponent":Landroid/content/ComponentName;
    :goto_0
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v18

    .line 845
    const-string/jumbo v19, "android.intent.action.VIEW"

    .line 843
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 846
    const-string/jumbo v19, "android.intent.category.BROWSABLE"

    .line 843
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 847
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unique:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 843
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 848
    const-string/jumbo v19, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 843
    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 849
    const-string/jumbo v19, "android.intent.extra.VERSION_CODE"

    move-object/from16 v0, p3

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    move/from16 v20, v0

    .line 843
    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    .line 850
    const-string/jumbo v19, "android.intent.extra.EPHEMERAL_FAILURE"

    .line 843
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v13

    .line 852
    .local v13, "goToWebIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 853
    .local v17, "webPendingIntent":Landroid/app/PendingIntent;
    new-instance v18, Landroid/app/Notification$Action$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f1101fa

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v16

    .line 855
    .local v16, "webAction":Landroid/app/Notification$Action;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 858
    .end local v13    # "goToWebIntent":Landroid/content/Intent;
    .end local v15    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v16    # "webAction":Landroid/app/Notification$Action;
    .end local v17    # "webPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    invoke-virtual {v10, v12}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f06003e

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getColor(I)I

    move-result v19

    .line 858
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 858
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 864
    move-object/from16 v0, p3

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v19

    .line 858
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 866
    const v20, 0x7f080246

    .line 865
    invoke-static/range {v19 .. v20}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v19

    .line 858
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 868
    const/16 v19, 0x1

    .line 858
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v18

    .line 870
    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 858
    const/16 v20, 0x7

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 871
    return-void

    .line 840
    .restart local v7    # "aiaComponent":Landroid/content/ComponentName;
    .restart local v15    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v11

    .line 841
    .local v11, "e":Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto/16 :goto_0
.end method

.method private registerNfcIconObserver(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1161
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneStatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Register NFC icon setting observer for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcIconObserver:Landroid/database/ContentObserver;

    .line 1172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1173
    const-string/jumbo v1, "show_nfc_icon_on_systemui"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1174
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcIconObserver:Landroid/database/ContentObserver;

    .line 1173
    const/4 v3, 0x0

    .line 1172
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1175
    return-void
.end method

.method public static setNfcIconEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 1198
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneStatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set NFC icon enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1201
    const-string/jumbo v2, "show_nfc_icon_on_systemui"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    .line 1200
    invoke-static {v1, v2, v0, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1202
    return-void

    .line 1201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unregisterNfcIconObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1178
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneStatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unregister NFC icon setting observer for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcIconObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1183
    :cond_1
    return-void
.end method

.method private updateAlarm()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 451
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 452
    .local v0, "alarm":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v1, 0x1

    .line 453
    .local v1, "hasAlarm":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v2

    .line 454
    .local v2, "zen":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    .line 456
    .local v3, "zenNone":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v4, :cond_3

    .line 457
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    if-eqz v3, :cond_2

    const v4, 0x7f0803e8

    :goto_2
    invoke-interface {v5, v6, v4, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 464
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    if-eqz v6, :cond_5

    .end local v1    # "hasAlarm":Z
    :goto_4
    invoke-interface {v4, v5, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 465
    return-void

    .line 452
    .end local v2    # "zen":I
    .end local v3    # "zenNone":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "hasAlarm":Z
    goto :goto_0

    .line 454
    .restart local v2    # "zen":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "zenNone":Z
    goto :goto_1

    .line 458
    :cond_2
    const v4, 0x7f0803e7

    goto :goto_2

    .line 460
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    if-eqz v3, :cond_4

    const v4, 0x7f08030a

    :goto_5
    invoke-interface {v5, v6, v4, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_3

    .line 461
    :cond_4
    const v4, 0x7f080309

    goto :goto_5

    .line 464
    :cond_5
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private updateCast()V
    .locals 8

    .prologue
    const v6, 0x7f11003f

    const/4 v7, 0x1

    .line 679
    const/4 v2, 0x0

    .line 680
    .local v2, "isCasting":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 681
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-eq v3, v7, :cond_1

    .line 682
    iget v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 683
    :cond_1
    const/4 v2, 0x1

    .line 687
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "PhoneStatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCast: isCasting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 689
    if-eqz v2, :cond_5

    .line 691
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v3, :cond_4

    .line 692
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    .line 693
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 692
    const v6, 0x7f0803ec

    invoke-interface {v3, v4, v6, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 699
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    invoke-interface {v3, v4, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 706
    :goto_1
    return-void

    .line 695
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    .line 696
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 695
    const v6, 0x7f08030e

    invoke-interface {v3, v4, v6, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 703
    :cond_5
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "PhoneStatusBarPolicy"

    const-string/jumbo v4, "updateCast: hiding icon in 3 sec..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private updateForegroundInstantApps()V
    .locals 5

    .prologue
    .line 771
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 772
    .local v0, "noMan":Landroid/app/NotificationManager;
    new-instance v1, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentNotifs:Landroid/util/ArraySet;

    invoke-direct {v1, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 773
    .local v1, "notifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 774
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentNotifs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 775
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$4;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 791
    return-void
.end method

.method private updateHeadsetPlug(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 1090
    const-string/jumbo v3, "state"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1091
    .local v0, "connected":Z
    :goto_0
    const-string/jumbo v3, "microphone"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1092
    .local v2, "hasMic":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1093
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 1094
    const v3, 0x7f1100e2

    .line 1093
    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "contentDescription":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    if-eqz v2, :cond_3

    const v3, 0x7f08010f

    :goto_3
    invoke-interface {v4, v5, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 1098
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1102
    .end local v1    # "contentDescription":Ljava/lang/String;
    :goto_4
    return-void

    .line 1090
    .end local v0    # "connected":Z
    .end local v2    # "hasMic":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "connected":Z
    goto :goto_0

    .line 1091
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "hasMic":Z
    goto :goto_1

    .line 1095
    :cond_2
    const v3, 0x7f1100e1

    goto :goto_2

    .line 1097
    .restart local v1    # "contentDescription":Ljava/lang/String;
    :cond_3
    const v3, 0x7f08010e

    goto :goto_3

    .line 1100
    .end local v1    # "contentDescription":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method private updateLocation()V
    .locals 4

    .prologue
    const v3, 0x7f110072

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneStatusBarPolicy"

    const-string/jumbo v1, "updateLocation: isLocationActive() == false, set location icon"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    .line 436
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 435
    const v3, 0x7f08042b

    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    .line 439
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    const v3, 0x7f080321

    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIcon(Ljava/lang/String;)V

    .line 445
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PhoneStatusBarPolicy"

    const-string/jumbo v1, "updateLocation: isLocationActive() == true, remove location icon"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateManagedProfile()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 768
    return-void
.end method

.method private final updateNFC(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 897
    if-eqz p1, :cond_4

    .line 898
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 900
    const-string/jumbo v4, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 901
    .local v3, "state":I
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateNFC state received : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 932
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "state":I
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcEnabled:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isNfcIconEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 936
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcIconVisible:Z

    if-eq v4, v2, :cond_3

    .line 937
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateNFC icon visibility : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotNfc:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 939
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcIconVisible:Z

    .line 942
    :cond_3
    return-void

    .line 905
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "state":I
    :pswitch_0
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcEnabled:Z

    goto :goto_0

    .line 909
    :pswitch_1
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcEnabled:Z

    goto :goto_0

    .line 915
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "state":I
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v4, :cond_5

    .line 917
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v4, :cond_6

    .line 924
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcEnabled:Z

    goto :goto_0

    .line 918
    :catch_0
    move-exception v1

    .line 919
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v4, "PhoneStatusBarPolicy"

    const-string/jumbo v5, "Could not retrieve NFC adapter"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 926
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_6
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcEnabled:Z

    goto :goto_0

    .line 932
    :cond_7
    const/4 v2, 0x0

    .local v2, "show":Z
    goto :goto_1

    .line 902
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateQuietState()V
    .locals 4

    .prologue
    .line 709
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileInQuietMode:Z

    .line 710
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 711
    .local v0, "currentUserId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ui$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 712
    .local v1, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileInQuietMode:Z

    .line 714
    return-void

    .line 717
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 468
    const-string/jumbo v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "stateExtra":Ljava/lang/String;
    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 490
    :goto_0
    return-void

    .line 471
    :cond_0
    const-string/jumbo v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 473
    :cond_1
    const-string/jumbo v2, "CARD_RESTRICTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 474
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 475
    :cond_2
    const-string/jumbo v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 476
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 477
    :cond_3
    const-string/jumbo v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 479
    const-string/jumbo v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "lockedReason":Ljava/lang/String;
    const-string/jumbo v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 481
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 482
    :cond_4
    const-string/jumbo v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 483
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 485
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 488
    .end local v0    # "lockedReason":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v6, 0x7f1100e5

    const/4 v5, 0x0

    .line 622
    const-string/jumbo v2, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 624
    .local v0, "currentTtyMode":I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 626
    .local v1, "enabled":Z
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTTY: enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_0
    if-eqz v1, :cond_4

    .line 630
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "PhoneStatusBarPolicy"

    const-string/jumbo v3, "updateTTY: set TTY on"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v2, :cond_3

    .line 633
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    .line 634
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 633
    const v5, 0x7f080455

    invoke-interface {v2, v3, v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 640
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 646
    :goto_2
    return-void

    .line 624
    .end local v1    # "enabled":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 636
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    .line 637
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 636
    const v5, 0x7f080330

    invoke-interface {v2, v3, v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 643
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "PhoneStatusBarPolicy"

    const-string/jumbo v3, "updateTTY: set TTY off"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private final updateTTYMode()V
    .locals 7

    .prologue
    const v6, 0x7f1100e5

    const/4 v5, 0x0

    .line 654
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 655
    const-string/jumbo v3, "preferred_tty_mode"

    .line 654
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 656
    .local v1, "ttyMode":I
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 657
    .local v0, "enabled":Z
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTTYMode: enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 660
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "PhoneStatusBarPolicy"

    const-string/jumbo v3, "updateTTYMode: set TTY on"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v2, :cond_3

    .line 663
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    .line 664
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 663
    const v5, 0x7f080455

    invoke-interface {v2, v3, v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 670
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 676
    :goto_2
    return-void

    .line 656
    .end local v0    # "enabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 666
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    .line 667
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 666
    const v5, 0x7f080330

    invoke-interface {v2, v3, v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 673
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "PhoneStatusBarPolicy"

    const-string/jumbo v3, "updateTTYMode: set TTY off"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private final updateVolumeZen()V
    .locals 14

    .prologue
    const v13, 0x7f1100d6

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 493
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 495
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v7, 0x0

    .line 496
    .local v7, "zenVisible":Z
    const/4 v6, 0x0

    .line 497
    .local v6, "zenIconId":I
    const/4 v5, 0x0

    .line 499
    .local v5, "zenDescription":Ljava/lang/String;
    const/4 v3, 0x0

    .line 500
    .local v3, "volumeVisible":Z
    const/4 v2, 0x0

    .line 501
    .local v2, "volumeIconId":I
    const/4 v1, 0x0

    .line 502
    .local v1, "volumeDescription":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v4

    .line 505
    .local v4, "zen":I
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v8, :cond_c

    .line 506
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DndTile;->isVisible(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DndTile;->isCombinedIcon(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 507
    :cond_0
    if-eqz v4, :cond_7

    const/4 v7, 0x1

    .line 508
    :goto_0
    if-ne v4, v10, :cond_8

    .line 509
    const v6, 0x7f080424

    .line 510
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f1103ed

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 521
    .end local v5    # "zenDescription":Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DndTile;->isVisible(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DndTile;->isCombinedIcon(Landroid/content/Context;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_b

    .line 522
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v8

    if-nez v8, :cond_b

    .line 523
    const/4 v3, 0x1

    .line 524
    const v2, 0x7f080430

    .line 525
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 563
    .end local v1    # "volumeDescription":Ljava/lang/String;
    :cond_2
    :goto_3
    if-eqz v7, :cond_3

    .line 564
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    invoke-interface {v8, v9, v6, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 566
    :cond_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    if-eq v7, v8, :cond_4

    .line 567
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 568
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    .line 571
    :cond_4
    if-eqz v3, :cond_5

    .line 572
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    invoke-interface {v8, v9, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 574
    :cond_5
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-eq v3, v8, :cond_6

    .line 575
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    invoke-interface {v8, v9, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 576
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 578
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    .line 579
    return-void

    .line 507
    .restart local v1    # "volumeDescription":Ljava/lang/String;
    .restart local v5    # "zenDescription":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    .line 509
    :cond_8
    const v6, 0x7f080423

    goto :goto_1

    .line 511
    :cond_9
    if-ne v4, v10, :cond_a

    .line 512
    const/4 v7, 0x1

    .line 513
    const v6, 0x7f08046a

    .line 514
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f110224

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "zenDescription":Ljava/lang/String;
    goto :goto_2

    .line 515
    .local v5, "zenDescription":Ljava/lang/String;
    :cond_a
    if-ne v4, v11, :cond_1

    .line 516
    const/4 v7, 0x1

    .line 517
    const v6, 0x7f080469

    .line 518
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f110227

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "zenDescription":Ljava/lang/String;
    goto :goto_2

    .line 526
    .end local v5    # "zenDescription":Ljava/lang/String;
    :cond_b
    if-eq v4, v10, :cond_2

    if-eq v4, v12, :cond_2

    .line 527
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 528
    const/4 v3, 0x1

    .line 529
    const v2, 0x7f080431

    .line 530
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f1100d7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "volumeDescription":Ljava/lang/String;
    goto :goto_3

    .line 534
    .local v1, "volumeDescription":Ljava/lang/String;
    .local v5, "zenDescription":Ljava/lang/String;
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DndTile;->isVisible(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DndTile;->isCombinedIcon(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 535
    :cond_d
    if-eqz v4, :cond_f

    const/4 v7, 0x1

    .line 536
    :goto_4
    if-ne v4, v10, :cond_10

    .line 537
    const v6, 0x7f08031d

    .line 538
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f1103ed

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 549
    .end local v5    # "zenDescription":Ljava/lang/String;
    :cond_e
    :goto_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DndTile;->isVisible(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DndTile;->isCombinedIcon(Landroid/content/Context;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_13

    .line 550
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v8

    if-nez v8, :cond_13

    .line 551
    const/4 v3, 0x1

    .line 552
    const v2, 0x7f080327

    .line 553
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "volumeDescription":Ljava/lang/String;
    goto/16 :goto_3

    .line 535
    .local v1, "volumeDescription":Ljava/lang/String;
    .restart local v5    # "zenDescription":Ljava/lang/String;
    :cond_f
    const/4 v7, 0x0

    goto :goto_4

    .line 537
    :cond_10
    const v6, 0x7f08031c

    goto :goto_5

    .line 539
    :cond_11
    if-ne v4, v10, :cond_12

    .line 540
    const/4 v7, 0x1

    .line 541
    const v6, 0x7f080341

    .line 542
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f110224

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "zenDescription":Ljava/lang/String;
    goto :goto_6

    .line 543
    .local v5, "zenDescription":Ljava/lang/String;
    :cond_12
    if-ne v4, v11, :cond_e

    .line 544
    const/4 v7, 0x1

    .line 545
    const v6, 0x7f080340

    .line 546
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f110227

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "zenDescription":Ljava/lang/String;
    goto :goto_6

    .line 554
    .end local v5    # "zenDescription":Ljava/lang/String;
    :cond_13
    if-eq v4, v10, :cond_2

    if-eq v4, v12, :cond_2

    .line 555
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 556
    const/4 v3, 0x1

    .line 557
    const v2, 0x7f080328

    .line 558
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v9, 0x7f1100d7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "volumeDescription":Ljava/lang/String;
    goto/16 :goto_3
.end method


# virtual methods
.method public appTransitionStarting(JJZ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "duration"    # J
    .param p5, "forced"    # Z

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    .line 998
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateForegroundInstantApps()V

    .line 999
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarPolicy_18999(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "exists"    # Ljava/lang/Boolean;

    .prologue
    .line 378
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDockedStackExists:Z

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateForegroundInstantApps()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarPolicy_35056()V
    .locals 5

    .prologue
    .line 726
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getLastResumedActivityUserId()I

    move-result v2

    .line 727
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    .line 728
    .local v1, "isManagedProfile":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$6;

    invoke-direct {v4, v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$6;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "isManagedProfile":Z
    .end local v2    # "userId":I
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PhoneStatusBarPolicy"

    const-string/jumbo v4, "updateManagedProfile: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarPolicy_35310(Z)V
    .locals 5
    .param p1, "isManagedProfile"    # Z

    .prologue
    const v4, 0x7f110073

    .line 730
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 731
    const/4 v0, 0x1

    .line 733
    .local v0, "showIcon":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    .line 736
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 735
    const v4, 0x7f08042c

    .line 734
    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 759
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    if-eq v1, v0, :cond_0

    .line 760
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 761
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    :cond_0
    return-void

    .line 738
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    .line 740
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 739
    const v4, 0x7f080324

    .line 738
    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 743
    .end local v0    # "showIcon":Z
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileInQuietMode:Z

    if-eqz v1, :cond_4

    .line 744
    const/4 v0, 0x1

    .line 746
    .restart local v0    # "showIcon":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v1, :cond_3

    .line 747
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    .line 749
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 748
    const v4, 0x7f08042d

    .line 747
    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 751
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    .line 753
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 752
    const v4, 0x7f080325

    .line 751
    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 757
    .end local v0    # "showIcon":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "showIcon":Z
    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarPolicy_37861(Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .locals 4
    .param p2, "noMan"    # Landroid/app/NotificationManager;
    .param p3, "pm"    # Landroid/content/pm/IPackageManager;

    .prologue
    .local p1, "notifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v3, 0x1

    .line 777
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedStackId()I

    move-result v1

    .line 778
    .local v1, "focusedId":I
    if-ne v1, v3, :cond_0

    .line 779
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->checkStack(ILandroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V

    .line 781
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDockedStackExists:Z

    if-eqz v2, :cond_1

    .line 782
    const/4 v2, 0x3

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->checkStack(ILandroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .end local v1    # "focusedId":I
    :cond_1
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$3;

    invoke-direct {v2, p2}, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public onBluetoothDevicesChanged()V
    .locals 0

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 584
    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 589
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 2
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1107
    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 0

    .prologue
    .line 1003
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    .line 1004
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateForegroundInstantApps()V

    .line 1005
    return-void
.end method

.method public onLocationActiveChanged(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateLocation()V

    .line 424
    return-void
.end method

.method public onRotationLockStateChanged(IZ)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "affordanceVisible"    # Z

    .prologue
    const v5, 0x7f1100dc

    const v3, 0x7f1100da

    const/4 v4, 0x1

    .line 1057
    packed-switch p1, :pswitch_data_0

    .line 1083
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1085
    :goto_0
    return-void

    .line 1060
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 1062
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1061
    const v3, 0x7f08043b

    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 1068
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 1065
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1064
    const v3, 0x7f08032b

    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 1072
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 1074
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1073
    const v3, 0x7f08043a

    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 1080
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 1077
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1076
    const v3, 0x7f08032a

    invoke-interface {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 1057
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRotationLockStateChanged(ZZ)V
    .locals 6
    .param p1, "rotationLocked"    # Z
    .param p2, "affordanceVisible"    # Z

    .prologue
    const v5, 0x7f1100dc

    const v4, 0x7f1100da

    .line 1025
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 1024
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/Context;)Z

    move-result v0

    .line 1026
    .local v0, "portrait":Z
    if-eqz p1, :cond_3

    .line 1027
    if-eqz v0, :cond_1

    .line 1029
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 1031
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1030
    const v4, 0x7f08043b

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 1048
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1052
    :goto_1
    return-void

    .line 1033
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 1034
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1033
    const v4, 0x7f08032b

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1039
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v1, :cond_2

    .line 1040
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 1041
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1040
    const v4, 0x7f08043a

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1043
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 1044
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1043
    const v4, 0x7f08032a

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1050
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onUserSetupChanged()V
    .locals 3

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 1010
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v2

    .line 1009
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isUserSetup(I)Z

    move-result v0

    .line 1011
    .local v0, "userSetup":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 1012
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    .line 1013
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    .line 1014
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateQuietState()V

    .line 1015
    return-void
.end method

.method public onZenChanged(I)V
    .locals 0
    .param p1, "zen"    # I

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 419
    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateForegroundInstantApps()V

    .line 1020
    return-void
.end method

.method protected updateBluetooth()V
    .locals 5

    .prologue
    .line 594
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v3, :cond_1

    .line 595
    const v2, 0x7f0803ee

    .line 601
    .local v2, "iconId":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v4, 0x7f1100a0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "contentDescription":Ljava/lang/String;
    const/4 v0, 0x0

    .line 603
    .local v0, "bluetoothEnabled":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    if-eqz v3, :cond_0

    .line 604
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v0

    .line 605
    .local v0, "bluetoothEnabled":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsSupportNewSpec:Z

    if-eqz v3, :cond_2

    .line 608
    const v2, 0x7f0803ef

    .line 613
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v4, 0x7f110037

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 617
    .end local v0    # "bluetoothEnabled":Z
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    invoke-interface {v3, v4, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 618
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 619
    return-void

    .line 597
    .end local v1    # "contentDescription":Ljava/lang/String;
    .end local v2    # "iconId":I
    :cond_1
    const v2, 0x7f08030f

    .restart local v2    # "iconId":I
    goto :goto_0

    .line 610
    .restart local v0    # "bluetoothEnabled":Z
    .restart local v1    # "contentDescription":Ljava/lang/String;
    :cond_2
    const v2, 0x7f080310

    goto :goto_1
.end method
