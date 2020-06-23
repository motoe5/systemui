.class public Lcom/android/settingslib/TetherAndWifiHelper;
.super Ljava/lang/Object;
.source "TetherAndWifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/TetherAndWifiHelper$1;,
        Lcom/android/settingslib/TetherAndWifiHelper$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCheckTetherAndRestoreWifiTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/TetherAndWifiHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/TetherAndWifiHelper;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/TetherAndWifiHelper;
    .param p1, "-value"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    iput-object p1, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settingslib/TetherAndWifiHelper;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/TetherAndWifiHelper;

    .prologue
    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->checkTetherAndRestoreWifi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/settingslib/TetherAndWifiHelper;->DEBUG:Z

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/settingslib/TetherAndWifiHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/TetherAndWifiHelper$1;-><init>(Lcom/android/settingslib/TetherAndWifiHelper;)V

    iput-object v0, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mCheckTetherAndRestoreWifiTask:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/android/settingslib/TetherAndWifiHelper$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/TetherAndWifiHelper$2;-><init>(Lcom/android/settingslib/TetherAndWifiHelper;)V

    .line 76
    iput-object v0, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/settingslib/TetherAndWifiHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/TetherAndWifiHelper$1;-><init>(Lcom/android/settingslib/TetherAndWifiHelper;)V

    iput-object v0, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mCheckTetherAndRestoreWifiTask:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/android/settingslib/TetherAndWifiHelper$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/TetherAndWifiHelper$2;-><init>(Lcom/android/settingslib/TetherAndWifiHelper;)V

    .line 76
    iput-object v0, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/TetherAndWifiHelper;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private checkTetherAndRestoreWifi()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isTetheringOrHotspotActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    sget-boolean v2, Lcom/android/settingslib/TetherAndWifiHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 210
    const-string/jumbo v2, "TetherAndWifiHelper"

    const-string/jumbo v3, "Don\'t restore wifi as tethering/mhs is still active"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    return-void

    .line 214
    :cond_1
    sget-object v2, Lcom/android/settingslib/TetherAndWifiHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 215
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    sget-object v2, Lcom/android/settingslib/TetherAndWifiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "wifi_saved_state"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 217
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 218
    const-string/jumbo v2, "wifi_saved_state"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    :cond_2
    return-void
.end method

.method public static disableAllActiveHotspots(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 166
    const-string/jumbo v2, "connectivity"

    .line 165
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 167
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 168
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 170
    if-eqz v0, :cond_0

    .line 171
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 172
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 174
    :cond_0
    return-void
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 117
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p0, v4

    .line 118
    .local v0, "iface":Ljava/lang/String;
    array-length v6, p1

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v1, p1, v2

    .line 119
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    return-object v0

    .line 118
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    .end local v1    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 124
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getDoNotShowWarning(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sput-object p1, Lcom/android/settingslib/TetherAndWifiHelper;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mHandler:Landroid/os/Handler;

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_1

    .line 66
    sget-boolean v0, Lcom/android/settingslib/TetherAndWifiHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, "TetherAndWifiHelper"

    .line 68
    const-string/jumbo v1, "close profileProxy before getting bluetooth pan proxy again during init"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->closeProfileProxy()V

    .line 72
    :cond_1
    sget-object v0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 73
    iget-object v1, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x5

    .line 72
    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 74
    return-void
.end method

.method private isBTTetheringEnabled()Z
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    return v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUSBTetheringEnabled()Z
    .locals 4

    .prologue
    .line 107
    sget-object v2, Lcom/android/settingslib/TetherAndWifiHelper;->mContext:Landroid/content/Context;

    .line 108
    const-string/jumbo v3, "connectivity"

    .line 107
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 109
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settingslib/TetherAndWifiHelper;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "usbIface":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 111
    const/4 v2, 0x1

    return v2

    .line 113
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isWifiHotspotActive()Z
    .locals 3

    .prologue
    .line 94
    sget-object v1, Lcom/android/settingslib/TetherAndWifiHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 95
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    return v1
.end method

.method public static setDoNotShowWarning(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    return-void
.end method


# virtual methods
.method public closeProfileProxy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 180
    iput-object v3, p0, Lcom/android/settingslib/TetherAndWifiHelper;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    .line 182
    :cond_0
    return-void
.end method

.method public getWarningMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isHotspotAndTetheringActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/settingslib/TetherAndWifiHelper;->mContext:Landroid/content/Context;

    .line 142
    const v1, 0x10406f7

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isWifiHotspotActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lcom/android/settingslib/TetherAndWifiHelper;->mContext:Landroid/content/Context;

    .line 145
    const v1, 0x10406f8

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isUSBTetheringEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    sget-object v0, Lcom/android/settingslib/TetherAndWifiHelper;->mContext:Landroid/content/Context;

    .line 148
    const v1, 0x10406f9

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_2
    sget-object v0, Lcom/android/settingslib/TetherAndWifiHelper;->mContext:Landroid/content/Context;

    .line 151
    const v1, 0x10406f6

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHotspotAndTetheringActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isWifiHotspotActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isBTTetheringEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isUSBTetheringEnabled()Z

    move-result v0

    :cond_0
    return v0

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isUSBTetheringEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isWifiHotspotActive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isBTTetheringEnabled()Z

    move-result v0

    :cond_2
    return v0

    .line 132
    :cond_3
    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isBTTetheringEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isWifiHotspotActive()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isUSBTetheringEnabled()Z

    move-result v0

    :cond_4
    return v0

    .line 135
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public isTetheringOrHotspotActive()Z
    .locals 3

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/settingslib/TetherAndWifiHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 157
    const-string/jumbo v0, "TetherAndWifiHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifApEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isWifiHotspotActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string/jumbo v0, "TetherAndWifiHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUsbTetheringEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isUSBTetheringEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string/jumbo v0, "TetherAndWifiHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBluetoothTetheringOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isBTTetheringEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isWifiHotspotActive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isUSBTetheringEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settingslib/TetherAndWifiHelper;->isBTTetheringEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
