.class public Lcom/motorola/settingslib/ModUtils;
.super Ljava/lang/Object;
.source "ModUtils.java"


# static fields
.field private static final DEBUG:Z

.field private static final DYNAMIC_MOD_BATTERY_HISTORY_CHART_INTENT:Landroid/content/Intent;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/motorola/settingslib/ModUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/settingslib/ModUtils;->TAG:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/motorola/settingslib/ModUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/settingslib/ModUtils;->DEBUG:Z

    .line 50
    new-instance v0, Landroid/content/Intent;

    .line 51
    const-string/jumbo v1, "com.motorola.extensions.settings.MODS_BATTERY_HISTORY_CHART"

    .line 50
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/settingslib/ModUtils;->DYNAMIC_MOD_BATTERY_HISTORY_CHART_INTENT:Landroid/content/Intent;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceChargingLabel(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 152
    const-string/jumbo v2, "plugged_raw"

    .line 153
    const-string/jumbo v3, "plugged"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 152
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "plugType":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 156
    sget v1, Lcom/android/settingslib/R$string;->power_charging_ac:I

    .line 166
    .local v1, "resId":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 157
    .end local v1    # "resId":I
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 158
    sget v1, Lcom/android/settingslib/R$string;->power_charging_usb:I

    .restart local v1    # "resId":I
    goto :goto_0

    .line 159
    .end local v1    # "resId":I
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 160
    sget v1, Lcom/android/settingslib/R$string;->power_charging_wireless:I

    .restart local v1    # "resId":I
    goto :goto_0

    .line 161
    .end local v1    # "resId":I
    :cond_2
    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 162
    sget v1, Lcom/android/settingslib/R$string;->battery_info_status_charging_from_mod:I

    .restart local v1    # "resId":I
    goto :goto_0

    .line 164
    .end local v1    # "resId":I
    :cond_3
    sget v1, Lcom/android/settingslib/R$string;->battery_info_status_charging:I

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method public static getModBatteryLevel(Landroid/content/Intent;)I
    .locals 4
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 72
    const-string/jumbo v2, "mod_level"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, "level":I
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 74
    .local v1, "scale":I
    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    return v2
.end method

.method public static getModBatteryType(Landroid/content/Intent;)I
    .locals 2
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string/jumbo v0, "mod_type"

    .line 79
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isAProjectorMod()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, "isProjector":Z
    const-string/jumbo v6, "sys.mod.current"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "current":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 226
    const/16 v0, 0x20

    .line 228
    .local v0, "IDSIZE":I
    const/16 v6, 0x20

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 229
    .local v1, "buf":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 231
    .local v5, "vid":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 232
    .local v4, "pid":I
    const/16 v6, 0x128

    if-ne v5, v6, :cond_0

    .line 233
    const/high16 v6, 0xf0000

    and-int/2addr v6, v4

    const/high16 v7, 0x50000

    if-ne v6, v7, :cond_0

    .line 234
    const/4 v3, 0x1

    .line 238
    .end local v0    # "IDSIZE":I
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "pid":I
    .end local v5    # "vid":I
    :cond_0
    sget-object v6, Lcom/motorola/settingslib/ModUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isAProjectorMod isProjector = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v3
.end method

.method public static isChargingMod(Landroid/content/Intent;)Z
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 272
    if-eqz p0, :cond_3

    .line 273
    const-string/jumbo v5, "plugged_raw"

    .line 274
    const-string/jumbo v6, "plugged"

    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 273
    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 275
    .local v2, "plugType":I
    const-string/jumbo v5, "mod_status"

    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 277
    .local v1, "modStatus":I
    const-string/jumbo v5, "mod_type"

    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 280
    .local v0, "batteryType":I
    if-eqz v2, :cond_0

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1

    .line 281
    :cond_0
    if-ne v1, v7, :cond_1

    .line 282
    if-ne v0, v7, :cond_1

    .line 283
    return v4

    .line 286
    :cond_1
    if-ne v1, v7, :cond_2

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0

    .line 289
    .end local v0    # "batteryType":I
    .end local v1    # "modStatus":I
    .end local v2    # "plugType":I
    :cond_3
    return v4
.end method

.method public static isDeviceChargingFromMod(Landroid/content/Intent;)Z
    .locals 6
    .param p0, "batteryIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 141
    const-string/jumbo v4, "status"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "deviceStatus":I
    const-string/jumbo v4, "plugged_raw"

    .line 144
    const-string/jumbo v5, "plugged"

    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 143
    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, "plugType":I
    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    .line 146
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 145
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 146
    goto :goto_0

    :cond_1
    move v2, v3

    .line 145
    goto :goto_0
.end method

.method public static isModActive(III)Z
    .locals 6
    .param p0, "device_level"    # I
    .param p1, "mod_level"    # I
    .param p2, "mod_type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    if-gtz p1, :cond_0

    .line 84
    return v4

    .line 86
    :cond_0
    sget-boolean v1, Lcom/motorola/settingslib/ModUtils;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/settingslib/ModUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isModActive ; Battery Type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    .line 89
    return v4

    .line 92
    :cond_2
    const-string/jumbo v1, "sys.mod.batterymode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "mode":Ljava/lang/String;
    sget-object v1, Lcom/motorola/settingslib/ModUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isModActive ; Battery Mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    return v5

    .line 101
    :cond_3
    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    return v4

    .line 106
    :cond_4
    const/16 v1, 0x50

    if-gt p0, v1, :cond_5

    .line 107
    return v5

    .line 110
    :cond_5
    return v4
.end method

.method public static isModAttached()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    const-string/jumbo v1, "sys.mod.current"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "attached":Ljava/lang/String;
    sget-object v1, Lcom/motorola/settingslib/ModUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isModAttached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz v0, :cond_0

    .line 131
    sget-object v1, Lcom/motorola/settingslib/ModUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isModAttached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 134
    :cond_1
    return v4

    .line 136
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isModAttached(II)Z
    .locals 2
    .param p0, "modStatus"    # I
    .param p1, "modLevel"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    if-eq p0, v1, :cond_0

    .line 121
    if-gez p1, :cond_1

    .line 122
    :cond_0
    return v0

    .line 124
    :cond_1
    return v1
.end method

.method public static isPowerSharingEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 264
    const-string/jumbo v4, "mod_battery_mode"

    .line 265
    const/4 v5, -0x2

    .line 263
    invoke-static {v3, v4, v2, v5}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 266
    .local v0, "mode":I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isSupplemental(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 245
    if-eqz p0, :cond_1

    .line 246
    invoke-static {p0}, Lcom/motorola/settingslib/ModUtils;->getModBatteryType(Landroid/content/Intent;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 249
    :cond_1
    return v0
.end method

.method public static showModQsTile(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 199
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 200
    sget-object v8, Lcom/motorola/settingslib/ModUtils;->DYNAMIC_MOD_BATTERY_HISTORY_CHART_INTENT:Landroid/content/Intent;

    .line 201
    const/16 v9, 0x80

    .line 199
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 203
    return v10

    .line 205
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "activity$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 206
    .local v1, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 209
    .local v6, "targetPkgName":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 210
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 213
    const/4 v7, 0x1

    return v7

    .line 218
    .end local v1    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "targetPkgName":Ljava/lang/String;
    :cond_2
    return v10

    .line 214
    .restart local v1    # "activity":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "targetPkgName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static togglePowerSharing(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    invoke-static {p0}, Lcom/motorola/settingslib/ModUtils;->isPowerSharingEnabled(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    .line 254
    .local v1, "value":Z
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.motorola.modservice.ui.action.SETTING_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "powersharing"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 257
    return v1
.end method
