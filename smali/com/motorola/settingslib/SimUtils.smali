.class public Lcom/motorola/settingslib/SimUtils;
.super Ljava/lang/Object;
.source "SimUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCurrentUiccCardProvisioningStatus(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 38
    const-string/jumbo v4, "extphone"

    .line 37
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    .line 39
    .local v2, "extTelephony":Lorg/codeaurora/internal/IExtTelephony;
    const/4 v3, 0x0

    .line 41
    .local v3, "subState":I
    :try_start_0
    invoke-interface {v2, p0}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 47
    :goto_0
    return v3

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException @getCurrentUiccCardProvisioningStatus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/settingslib/SimUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 43
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoteException @getCurrentUiccCardProvisioningStatus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/settingslib/SimUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string/jumbo v0, "Setting-SimUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method
