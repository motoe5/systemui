.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraBinderRequestResultReceiver"
.end annotation


# instance fields
.field private mMediaControllerImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/os/Handler;)V
    .locals 1
    .param p1, "mediaControllerImpl"    # Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2057
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2058
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->mMediaControllerImpl:Ljava/lang/ref/WeakReference;

    .line 2059
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 2063
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->mMediaControllerImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    .line 2064
    .local v0, "mediaControllerImpl":Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 2065
    :cond_0
    return-void

    .line 2068
    :cond_1
    const-string/jumbo v1, "android.support.v4.media.session.EXTRA_BINDER"

    invoke-static {p2, v1}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2067
    invoke-static {v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->-set0(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/support/v4/media/session/IMediaSession;)Landroid/support/v4/media/session/IMediaSession;

    .line 2069
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->-wrap0(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)V

    .line 2070
    return-void
.end method