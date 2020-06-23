.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# instance fields
.field alwaysShowCdmaRssi:Z

.field hideLtePlus:Z

.field hspaDataDistinguishable:Z

.field nc:Lcom/android/systemui/moto/NetworkConfig;

.field show4gForLte:Z

.field showAtLeast3G:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1335
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    .line 1336
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    .line 1337
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    .line 1338
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    .line 1340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    .line 1334
    return-void
.end method

.method static readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1343
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;-><init>()V

    .line 1344
    .local v0, "config":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1346
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f050035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    .line 1348
    const v2, 0x112001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1347
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    .line 1349
    const v2, 0x7f050032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    .line 1351
    const v2, 0x7f050026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1350
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    .line 1352
    const v2, 0x7f050024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    .line 1354
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    .line 1355
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    .line 1354
    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/systemui/moto/NetworkConfig;->readConfig(Landroid/content/Context;ZZZZ)Lcom/android/systemui/moto/NetworkConfig;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    .line 1357
    return-object v0
.end method
