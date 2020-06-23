.class public Lcom/android/systemui/qs/tiles/ModBatteryTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ModBatteryTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/ModBatteryTile$1;,
        Lcom/android/systemui/qs/tiles/ModBatteryTile$2;,
        Lcom/android/systemui/qs/tiles/ModBatteryTile$3;,
        Lcom/android/systemui/qs/tiles/ModBatteryTile$ModTileView;,
        Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;,
        Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-qs-tiles-ModBatteryTile$RemoteStateSwitchesValues:[I

.field private static final synthetic -com-android-systemui-qs-tiles-ModBatteryTile$SuppStateSwitchesValues:[I

.field private static final DEBUG:Z

.field private static final MOD_EXTRAS:[Ljava/lang/String;


# instance fields
.field private final MOD_METRICS_CATEGORY:I

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAnimRemoteAttach:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimRemoteAttachCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimRemoteChargeDisabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimRemoteChargeEnabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimRemoteDetach:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimRemoteDetachCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppAttachOff:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppAttachOffCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppAttachOn:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppAttachOnCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppDetachOff:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppDetachOffCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppDetachOn:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppDetachOnCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppOffChargeDisabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppOffChargeEnabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppOnChargeDisabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppOnChargeEnabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppToggleOff:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppToggleOffCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppToggleOn:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mAnimSuppToggleOnCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$State;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryIntent:Landroid/content/Intent;

.field private mBatteryModeObserver:Landroid/database/ContentObserver;

.field private mChargingMod:Z

.field private mIconAnimating:Z

.field private final mIconDefault:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mIconRemote:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mIconRemoteCharging:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mIconSuppOff:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mIconSuppOffCharging:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mIconSuppOn:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mIconSuppOnCharging:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mModBatteryLevel:I

.field private final mModReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingUpdateAnimArg:Ljava/lang/Object;

.field private mPendingUpdateStatic:Z

.field private mSharingEnabled:Z

.field private mSupplemental:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Landroid/graphics/drawable/Animatable2$AnimationCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Landroid/content/Intent;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mPendingUpdateAnimArg:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mPendingUpdateStatic:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSupplemental:Z

    return v0
.end method

.method private static synthetic -getcom-android-systemui-qs-tiles-ModBatteryTile$RemoteStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-com-android-systemui-qs-tiles-ModBatteryTile$RemoteStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-com-android-systemui-qs-tiles-ModBatteryTile$RemoteStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->values()[Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->Attaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ChargeDisabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ChargeEnabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-com-android-systemui-qs-tiles-ModBatteryTile$RemoteStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-systemui-qs-tiles-ModBatteryTile$SuppStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-com-android-systemui-qs-tiles-ModBatteryTile$SuppStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-com-android-systemui-qs-tiles-ModBatteryTile$SuppStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->values()[Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Attaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ChargeDisabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ChargeEnabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Toggling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-com-android-systemui-qs-tiles-ModBatteryTile$SuppStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/ModBatteryTile;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p1, "-value"    # Landroid/content/Intent;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconAnimating:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/qs/tiles/ModBatteryTile;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mModBatteryLevel:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/qs/tiles/ModBatteryTile;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p1, "-value"    # Ljava/lang/Object;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mPendingUpdateAnimArg:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mPendingUpdateStatic:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSupplemental:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/ModBatteryTile;)Landroid/content/Intent;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->getBatteryIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/ModBatteryTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/ModBatteryTile;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;
    .param p1, "includeMutable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->resetModState(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/ModBatteryTile;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/ModBatteryTile;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->updateModState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 41
    const-string/jumbo v0, "ModBatteryTile"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "plugged"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "plugged_raw"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "mod_type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "mod_level"

    aput-object v1, v0, v3

    .line 55
    const-string/jumbo v1, "mod_status"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "mod_psrc"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 50
    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->MOD_EXTRAS:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 8
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    const v7, 0x7f080370

    const v6, 0x7f08036d

    const v5, 0x7f08036c

    const v4, 0x7f080369

    const v3, 0x7f080358

    .line 245
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 42
    const v0, 0xf423f

    iput v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->MOD_METRICS_CATEGORY:I

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mModBatteryLevel:I

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIntentFilter:Landroid/content/IntentFilter;

    .line 69
    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconDefault:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 70
    const v0, 0x7f080359

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconRemote:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 72
    const v0, 0x7f08035e

    .line 71
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconRemoteCharging:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 74
    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconSuppOn:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 75
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconSuppOff:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 77
    invoke-static {v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconSuppOnCharging:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 80
    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconSuppOffCharging:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 83
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 84
    const v1, 0x7f08035a

    .line 85
    const v2, 0x7f080359

    .line 83
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteAttach:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 87
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 88
    const v1, 0x7f08035b

    .line 89
    const v2, 0x7f08035e

    .line 87
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteAttachCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 91
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 92
    const v1, 0x7f08035f

    .line 91
    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteDetach:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 95
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 96
    const v1, 0x7f080360

    .line 95
    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteDetachCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 99
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 100
    const v1, 0x7f08035d

    .line 101
    const v2, 0x7f08035e

    .line 99
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteChargeEnabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 103
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 104
    const v1, 0x7f08035c

    .line 105
    const v2, 0x7f080359

    .line 103
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteChargeDisabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 107
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 108
    const v1, 0x7f080363

    .line 107
    invoke-direct {v0, p0, v1, v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppAttachOn:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 111
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 112
    const v1, 0x7f080364

    .line 111
    invoke-direct {v0, p0, v1, v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppAttachOnCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 115
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 116
    const v1, 0x7f080361

    .line 115
    invoke-direct {v0, p0, v1, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppAttachOff:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 119
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 120
    const v1, 0x7f080362

    .line 119
    invoke-direct {v0, p0, v1, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppAttachOffCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 123
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 124
    const v1, 0x7f080367

    .line 123
    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppDetachOn:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 127
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 128
    const v1, 0x7f080368

    .line 127
    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppDetachOnCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 131
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 132
    const v1, 0x7f080365

    .line 131
    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppDetachOff:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 135
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 136
    const v1, 0x7f080366

    .line 135
    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppDetachOffCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 139
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 140
    const v1, 0x7f080373

    .line 139
    invoke-direct {v0, p0, v1, v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppToggleOn:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 143
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 144
    const v1, 0x7f080374

    .line 143
    invoke-direct {v0, p0, v1, v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppToggleOnCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 147
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 148
    const v1, 0x7f080371

    .line 147
    invoke-direct {v0, p0, v1, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppToggleOff:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 151
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 152
    const v1, 0x7f080372

    .line 151
    invoke-direct {v0, p0, v1, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppToggleOffCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 155
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 156
    const v1, 0x7f08036f

    .line 155
    invoke-direct {v0, p0, v1, v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppOnChargeEnabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 159
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 160
    const v1, 0x7f08036b

    .line 159
    invoke-direct {v0, p0, v1, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppOffChargeEnabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 163
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 164
    const v1, 0x7f08036e

    .line 163
    invoke-direct {v0, p0, v1, v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppOnChargeDisabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 167
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 168
    const v1, 0x7f08036a

    .line 167
    invoke-direct {v0, p0, v1, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppOffChargeDisabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    .line 186
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile$1;-><init>(Lcom/android/systemui/qs/tiles/ModBatteryTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryModeObserver:Landroid/database/ContentObserver;

    .line 200
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ModBatteryTile$2;-><init>(Lcom/android/systemui/qs/tiles/ModBatteryTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 476
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ModBatteryTile$3;-><init>(Lcom/android/systemui/qs/tiles/ModBatteryTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mModReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 247
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 248
    return-void
.end method

.method private getBatteryIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 567
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 568
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ModBatteryTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Battery intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    return-object v0
.end method

.method private getTileLabel(Z)Ljava/lang/String;
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    const/4 v3, 0x0

    .line 587
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mModBatteryLevel:I

    if-ltz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mModBatteryLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f110324

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11034a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isBatteryChangedForMod(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "oldIntent"    # Landroid/content/Intent;
    .param p2, "newIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 573
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 574
    sget-object v3, Lcom/android/systemui/qs/tiles/ModBatteryTile;->MOD_EXTRAS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 575
    .local v0, "extra":Ljava/lang/String;
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 576
    return v7

    .line 574
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    .end local v0    # "extra":Ljava/lang/String;
    :cond_1
    return v2

    .line 583
    :cond_2
    return v7
.end method

.method private resetModState(Z)V
    .locals 3
    .param p1, "includeMutable"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 553
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mModBatteryLevel:I

    .line 555
    if-eqz p1, :cond_0

    .line 556
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    .line 559
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSupplemental:Z

    .line 560
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconAnimating:Z

    .line 561
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mPendingUpdateStatic:Z

    .line 562
    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mPendingUpdateAnimArg:Ljava/lang/Object;

    .line 563
    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryIntent:Landroid/content/Intent;

    .line 564
    return-void
.end method

.method private updateModState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 506
    sget-boolean v2, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ModBatteryTile"

    const-string/jumbo v3, "Update Mod state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->getBatteryIntent()Landroid/content/Intent;

    move-result-object v0

    .line 510
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryIntent:Landroid/content/Intent;

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->isBatteryChangedForMod(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 511
    sget-boolean v2, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ModBatteryTile"

    const-string/jumbo v3, "Skip identical mod state"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_1
    return-void

    .line 515
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryIntent:Landroid/content/Intent;

    .line 517
    if-eqz v0, :cond_b

    invoke-static {}, Lcom/motorola/settingslib/ModUtils;->isModAttached()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 518
    invoke-static {v0}, Lcom/motorola/settingslib/ModUtils;->getModBatteryLevel(Landroid/content/Intent;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mModBatteryLevel:I

    .line 520
    iget v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mModBatteryLevel:I

    if-gez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSupplemental:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v2, :cond_5

    .line 521
    :cond_3
    sget-boolean v2, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ModBatteryTile"

    const-string/jumbo v3, "Skip invalid mod state"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_4
    return-void

    .line 525
    :cond_5
    invoke-static {v0}, Lcom/motorola/settingslib/ModUtils;->isSupplemental(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSupplemental:Z

    .line 527
    iget v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mModBatteryLevel:I

    if-ltz v2, :cond_9

    .line 528
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    .line 529
    .local v1, "wasChargingMod":Z
    invoke-static {v0}, Lcom/motorola/settingslib/ModUtils;->isChargingMod(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    .line 531
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eq v2, v1, :cond_a

    .line 532
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v2, :cond_7

    .line 533
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSupplemental:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ChargeEnabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->refreshState(Ljava/lang/Object;)V

    .line 540
    :goto_1
    return-void

    .line 534
    :cond_6
    sget-object v2, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ChargeEnabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    goto :goto_0

    .line 536
    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSupplemental:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ChargeDisabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_1

    .line 537
    :cond_8
    sget-object v2, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ChargeDisabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    goto :goto_2

    .line 543
    .end local v1    # "wasChargingMod":Z
    :cond_9
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    .line 549
    :cond_a
    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->refreshState(Ljava/lang/Object;)V

    .line 550
    return-void

    .line 546
    :cond_b
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->resetModState(Z)V

    goto :goto_3
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$ModTileView;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/ModBatteryTile$ModTileView;-><init>(Lcom/android/systemui/qs/tiles/ModBatteryTile;Landroid/content/Context;)V

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.motorola.modservice.ui.action.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 257
    const v0, 0xf423f

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lcom/motorola/settingslib/ModUtils;->isModAttached()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->getTileLabel(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    .line 306
    invoke-static {}, Lcom/motorola/settingslib/ModUtils;->isModAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSupplemental:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/settingslib/ModUtils;->togglePowerSharing(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    .line 308
    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Toggling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->refreshState(Ljava/lang/Object;)V

    .line 314
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 311
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.motorola.modservice.ui.action.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 310
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 324
    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Toggling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconAnimating:Z

    if-eqz v0, :cond_2

    .line 325
    sget-boolean v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ModBatteryTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pending update for arg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    if-eqz p2, :cond_1

    .line 328
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mPendingUpdateAnimArg:Ljava/lang/Object;

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mPendingUpdateStatic:Z

    goto :goto_0

    .line 336
    :cond_2
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    if-eqz v0, :cond_7

    .line 337
    sget-boolean v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ModBatteryTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Remote mod transitional state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_3
    invoke-static {}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-getcom-android-systemui-qs-tiles-ModBatteryTile$RemoteStateSwitchesValues()[I

    move-result-object v4

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_1
    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;->Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$RemoteState;

    if-eq p2, v0, :cond_6

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->getTileLabel(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 370
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 371
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 462
    :goto_3
    return-void

    .line 341
    :pswitch_0
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteAttachCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_4
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteAttach:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_4

    .line 347
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 348
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteDetachCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_5
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 349
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->resetModState(Z)V

    goto :goto_1

    .line 348
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteDetach:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_5

    .line 354
    :pswitch_2
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 355
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteChargeEnabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    .line 360
    :pswitch_3
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 361
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimRemoteChargeDisabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    :cond_6
    move v0, v2

    .line 369
    goto :goto_2

    .line 372
    :cond_7
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    if-eqz v0, :cond_1a

    .line 373
    sget-boolean v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "ModBatteryTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Supplemental mod transitional state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_8
    invoke-static {}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->-getcom-android-systemui-qs-tiles-ModBatteryTile$SuppStateSwitchesValues()[I

    move-result-object v4

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_1

    .line 431
    :goto_6
    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    if-eq p2, v0, :cond_18

    :goto_7
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->getTileLabel(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 432
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 433
    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    if-ne p2, v0, :cond_19

    .line 434
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_8
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    goto :goto_3

    .line 377
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    if-eqz v0, :cond_9

    move v0, v3

    :goto_9
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 379
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    if-eqz v0, :cond_b

    .line 380
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppAttachOnCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_a
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_6

    :cond_9
    move v0, v1

    .line 377
    goto :goto_9

    .line 380
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppAttachOn:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_a

    .line 382
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppAttachOffCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_b
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppAttachOff:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_b

    .line 389
    :pswitch_5
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 391
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    if-eqz v0, :cond_e

    .line 392
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppDetachOnCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_c
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 397
    :goto_d
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->resetModState(Z)V

    goto :goto_6

    .line 392
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppDetachOn:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_c

    .line 394
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppDetachOffCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_e
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_d

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppDetachOff:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_e

    .line 402
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    if-eqz v0, :cond_10

    :goto_f
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 404
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    if-eqz v0, :cond_12

    .line 405
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppToggleOnCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_10
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_6

    :cond_10
    move v3, v1

    .line 402
    goto :goto_f

    .line 405
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppToggleOn:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_10

    .line 407
    :cond_12
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppToggleOffCharging:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_11
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto/16 :goto_6

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppToggleOff:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_11

    .line 414
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    if-eqz v0, :cond_14

    :goto_12
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 415
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppOnChargeEnabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_13
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto/16 :goto_6

    :cond_14
    move v3, v1

    .line 414
    goto :goto_12

    .line 416
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppOffChargeEnabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_13

    .line 421
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    if-eqz v0, :cond_16

    :goto_14
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 422
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppOnChargeDisabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_15
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto/16 :goto_6

    :cond_16
    move v3, v1

    .line 421
    goto :goto_14

    .line 423
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mAnimSuppOffChargeDisabling:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_15

    :cond_18
    move v1, v2

    .line 431
    goto/16 :goto_7

    .line 434
    :cond_19
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 436
    :cond_1a
    invoke-static {}, Lcom/motorola/settingslib/ModUtils;->isModAttached()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 437
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSupplemental:Z

    if-eqz v0, :cond_1f

    .line 438
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    if-eqz v0, :cond_1b

    :goto_16
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 440
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    if-eqz v0, :cond_1d

    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconSuppOnCharging:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_17
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 450
    :goto_18
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->getTileLabel(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 457
    :goto_19
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 458
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSupplemental:Z

    if-eqz v0, :cond_22

    .line 459
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 458
    :goto_1a
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1b
    move v3, v1

    .line 438
    goto :goto_16

    .line 441
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconSuppOn:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_17

    .line 443
    :cond_1d
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconSuppOffCharging:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_1b
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_18

    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconSuppOff:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1b

    .line 446
    :cond_1f
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 447
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconRemoteCharging:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_1c
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_18

    :cond_20
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconRemote:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1c

    .line 452
    :cond_21
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 453
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mIconDefault:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 454
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->getTileLabel(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_19

    .line 459
    :cond_22
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 375
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 466
    sget-boolean v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ModBatteryTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBatteryLevelChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->updateModState()V

    .line 469
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->updateModState()V

    .line 474
    return-void
.end method

.method public setListening(Z)V
    .locals 7
    .param p1, "listening"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 262
    sget-boolean v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ModBatteryTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setListening listening is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    if-eqz p1, :cond_4

    .line 264
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->resetModState(Z)V

    .line 265
    invoke-static {}, Lcom/motorola/settingslib/ModUtils;->isModAttached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    sget-boolean v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ModBatteryTile"

    const-string/jumbo v1, "Mod is attached, register for battery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 271
    :goto_0
    sget-boolean v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ModBatteryTile"

    const-string/jumbo v1, "Mod is attached, register for Mod attach/detach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.motorola.mod.action.MOD_ENUMERATION_DONE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.motorola.mod.action.MOD_DETACH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mModReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 275
    const-string/jumbo v4, "com.motorola.mod.permission.MOD_INTERNAL"

    .line 274
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    const-string/jumbo v1, "mod_battery_mode"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryModeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x2

    .line 278
    invoke-virtual {v0, v1, v6, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/motorola/settingslib/ModUtils;->isChargingMod(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mChargingMod:Z

    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/settingslib/ModUtils;->isPowerSharingEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mSharingEnabled:Z

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->updateModState()V

    .line 295
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :goto_1
    return-void

    .line 269
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/ModBatteryTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_4
    sget-boolean v0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ModBatteryTile"

    const-string/jumbo v1, "unregister listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mModReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ModBatteryTile;->mBatteryModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method
