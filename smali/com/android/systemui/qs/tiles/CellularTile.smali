.class public Lcom/android/systemui/qs/tiles/CellularTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CellularTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;,
        Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field static final CELLULAR_SETTINGS:Landroid/content/Intent;


# instance fields
.field public final CELLULAR_SUB_ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

.field private mPhoneCount:I

.field private final mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

.field private mSubId:I

.field private mTileIndex:I

.field noSIM:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/CellularTile;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/CellularTile;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mTileIndex:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 63
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    .line 62
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 60
    const-string/jumbo v0, "CellularTile"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->TAG:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mTileIndex:I

    .line 71
    iput v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mPhoneCount:I

    .line 77
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->noSIM:Z

    .line 79
    const-string/jumbo v0, "subscription"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SUB_ID:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    .line 86
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 87
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 89
    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;I)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;
    .param p2, "tileIndex"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 95
    iput p2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mTileIndex:I

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    .line 97
    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    const-string/jumbo v1, "subscription"

    iget v2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mPhoneCount:I

    .line 99
    return-void
.end method

.method public static removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 320
    if-nez p0, :cond_0

    return-object v1

    .line 321
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 322
    .local v0, "length":I
    const-string/jumbo v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 325
    :cond_1
    return-object p0
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    new-instance v0, Lcom/android/systemui/qs/CellTileView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/CellTileView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 310
    const/16 v0, 0x73

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 172
    invoke-static {}, Lcom/android/systemui/moto/NetworkStateTracker;->isMultipleSimDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1103da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mTileIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1103d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    .line 146
    iget v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mPhoneCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v1, Lcom/android/systemui/qs/tiles/DataTile;->CELLULAR_SIM_SETTINGS:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    iget v2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->setToggleState(Z)V

    goto :goto_0
.end method

.method protected handleSecondaryClick()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    iget v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->noSIM:Z

    xor-int/lit8 v0, v0, 0x1

    .line 160
    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/CellularTile;->showDetail(Z)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v1, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 10
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    move-object v0, p2

    .line 181
    check-cast v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    .line 182
    .local v0, "cb":Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
    if-nez v0, :cond_0

    .line 183
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->-get0(Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move-result-object v0

    .line 187
    :cond_0
    sget-boolean v5, Lcom/android/systemui/qs/tiles/CellularTile;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 188
    const-string/jumbo v5, "CellularTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleUpdateState state = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "], arg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 189
    const-string/jumbo v8, ", CallbackInfo = ["

    .line 188
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 190
    const-string/jumbo v8, "enabled = "

    .line 188
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 190
    iget-boolean v8, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    .line 188
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 191
    const-string/jumbo v8, ", mobileSignalIconId = "

    .line 188
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 191
    iget v8, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    .line 188
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 192
    const-string/jumbo v8, "]"

    .line 188
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 197
    .local v3, "r":Landroid/content/res/Resources;
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    :goto_0
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 198
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    :goto_1
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 199
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isDataTypeIconWide:Z

    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 200
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    .line 202
    const v5, 0x7f11031e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    .line 204
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_4

    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v5, :cond_4

    .line 205
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    .line 207
    .local v4, "signalContentDesc":Ljava/lang/String;
    :goto_2
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v5, :cond_5

    .line 208
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->contentDescription:Ljava/lang/CharSequence;

    .line 213
    :goto_3
    const-class v5, Landroid/widget/Switch;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 214
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 215
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v5}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v5

    .line 214
    :goto_4
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->value:Z

    .line 216
    new-instance v5, Lcom/android/systemui/qs/CellTileView$SignalIcon;

    iget v7, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    invoke-direct {v5, v7}, Lcom/android/systemui/qs/CellTileView$SignalIcon;-><init>(I)V

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 217
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v5, :cond_7

    .line 218
    iput v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    .line 224
    :goto_5
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isMotoWideIcons:Z

    if-nez v5, :cond_8

    .line 226
    return-void

    .end local v4    # "signalContentDesc":Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 197
    goto :goto_0

    :cond_3
    move v5, v6

    .line 198
    goto :goto_1

    .line 206
    :cond_4
    const v5, 0x7f11007c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "signalContentDesc":Ljava/lang/String;
    goto :goto_2

    .line 210
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_6
    move v5, v6

    .line 214
    goto :goto_4

    .line 220
    :cond_7
    const/4 v5, 0x2

    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    goto :goto_5

    .line 233
    :cond_8
    iget v5, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mPhoneCount:I

    if-gt v5, v9, :cond_9

    .line 234
    iput-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dualTarget:Z

    .line 238
    :cond_9
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    .line 239
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/CellularTile;->noSIM:Z

    .line 242
    const/4 v1, 0x0

    .line 246
    .local v1, "hideDataIcon4Repw":Z
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSubId:I

    iget v7, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    if-eq v5, v7, :cond_a

    .line 247
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSubId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/CellularTile;->setSubId(I)V

    .line 250
    :cond_a
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v5, :cond_11

    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimIconId:I

    if-lez v5, :cond_10

    iget v2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSimIconId:I

    .line 258
    .local v2, "iconId":I
    :goto_6
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    if-ne v2, v5, :cond_15

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showSeparatedSignalBars:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_15

    .line 259
    new-instance v5, Lcom/android/systemui/qs/CellTileView$SignalIcon;

    iget v7, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    invoke-direct {v5, v7}, Lcom/android/systemui/qs/CellTileView$SignalIcon;-><init>(I)V

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 265
    :goto_7
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isBidiDirectionEnabled:Z

    if-eqz v5, :cond_16

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    xor-int/lit8 v5, v5, 0x1

    :goto_8
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->autoMirrorDrawable:Z

    .line 266
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-nez v5, :cond_b

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    if-eqz v5, :cond_17

    .line 267
    :cond_b
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v5, :cond_17

    .line 268
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    if-eqz v5, :cond_17

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenWifiActive:Z

    .line 266
    if-eqz v5, :cond_17

    .line 269
    :cond_c
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    xor-int/lit8 v5, v5, 0x1

    .line 266
    if-eqz v5, :cond_17

    .line 269
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    .line 266
    :goto_9
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayWideIconId:I

    .line 271
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobilePhoneLabel:Ljava/lang/String;

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->mobilePhoneLabel:Ljava/lang/String;

    .line 273
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v5, :cond_18

    move v5, v6

    :goto_a
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->roamingIconId:I

    .line 275
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isBidiDirectionEnabled:Z

    if-eqz v5, :cond_19

    .line 276
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-nez v5, :cond_d

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    if-eqz v5, :cond_e

    .line 277
    :cond_d
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v5, :cond_e

    .line 278
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    if-lez v5, :cond_e

    .line 280
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    xor-int/lit8 v5, v5, 0x1

    .line 276
    if-eqz v5, :cond_e

    .line 281
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    xor-int/lit8 v5, v5, 0x1

    .line 276
    if-eqz v5, :cond_e

    .line 281
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    .line 276
    :cond_e
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityIconId:I

    .line 291
    :goto_b
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-eqz v5, :cond_1c

    .line 292
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/CellularTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 291
    :goto_c
    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    .line 302
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v5, :cond_f

    .line 303
    iput v9, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    .line 306
    :cond_f
    return-void

    .line 250
    .end local v2    # "iconId":I
    :cond_10
    const v2, 0x7f0801c6

    .restart local v2    # "iconId":I
    goto/16 :goto_6

    .line 252
    .end local v2    # "iconId":I
    :cond_11
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-nez v5, :cond_12

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    if-eqz v5, :cond_13

    .line 253
    :cond_12
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    if-lez v5, :cond_13

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    xor-int/lit8 v5, v5, 0x1

    .line 252
    if-eqz v5, :cond_13

    .line 254
    iget v2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    .restart local v2    # "iconId":I
    goto/16 :goto_6

    .line 255
    .end local v2    # "iconId":I
    :cond_13
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v5, :cond_14

    .line 257
    const v2, 0x7f0801d0

    .restart local v2    # "iconId":I
    goto/16 :goto_6

    .end local v2    # "iconId":I
    :cond_14
    const v2, 0x7f0801d7

    .restart local v2    # "iconId":I
    goto/16 :goto_6

    .line 262
    :cond_15
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto/16 :goto_7

    :cond_16
    move v5, v6

    .line 265
    goto/16 :goto_8

    :cond_17
    move v5, v6

    .line 269
    goto :goto_9

    .line 273
    :cond_18
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileRoamingIconId:I

    goto :goto_a

    .line 283
    :cond_19
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    if-nez v5, :cond_1a

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->showMobileWhenNotEnabled:Z

    if-eqz v5, :cond_1b

    .line 284
    :cond_1a
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    if-lez v5, :cond_1b

    .line 285
    iget v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    if-lez v5, :cond_1b

    .line 287
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    xor-int/lit8 v5, v5, 0x1

    .line 283
    if-eqz v5, :cond_1b

    .line 288
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    xor-int/lit8 v5, v5, 0x1

    .line 283
    if-eqz v5, :cond_1b

    .line 288
    iget v6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileActivityIconId:I

    .line 283
    :cond_1b
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->dataActivityWideIconId:I

    goto :goto_b

    .line 295
    :cond_1c
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v5, :cond_1d

    .line 296
    const v5, 0x1040306

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/CellularTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 297
    :cond_1d
    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isRejectCodeEnabled:Z

    if-eqz v5, :cond_1e

    const-string/jumbo v5, ""

    goto :goto_c

    :cond_1e
    const v5, 0x7f110409

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_c
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method

.method public setSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    if-eq v0, p1, :cond_0

    .line 103
    iput p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    .line 104
    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    const-string/jumbo v1, "subscription"

    iget v2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    :cond_0
    return-void
.end method
