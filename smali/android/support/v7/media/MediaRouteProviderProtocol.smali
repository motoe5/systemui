.class abstract Landroid/support/v7/media/MediaRouteProviderProtocol;
.super Ljava/lang/Object;
.source "MediaRouteProviderProtocol.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidRemoteMessenger(Landroid/os/Messenger;)Z
    .locals 3
    .param p0, "messenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v1, 0x0

    .line 223
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/lang/NullPointerException;
    return v1
.end method
