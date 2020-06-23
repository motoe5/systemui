.class public Lcom/android/systemui/recents/RecentsImplProxy;
.super Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;
.source "RecentsImplProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsImplProxy$1;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mImpl:Lcom/android/systemui/recents/RecentsImpl;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/RecentsImplProxy;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 1
    .param p1, "recentsImpl"    # Lcom/android/systemui/recents/RecentsImpl;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;-><init>()V

    .line 118
    new-instance v0, Lcom/android/systemui/recents/RecentsImplProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsImplProxy$1;-><init>(Lcom/android/systemui/recents/RecentsImplProxy;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    .line 47
    return-void
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    return-void
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "topTaskId"    # I
    .param p2, "dragMode"    # I
    .param p3, "stackCreateMode"    # I
    .param p4, "initialBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 96
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 97
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 98
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 99
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method

.method public hideRecents(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v2, v0

    .line 77
    :goto_0
    if-eqz p2, :cond_1

    .line 76
    :goto_1
    const/4 v1, 0x4

    invoke-virtual {v4, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    return-void

    :cond_0
    move v2, v1

    .line 76
    goto :goto_0

    :cond_1
    move v0, v1

    .line 77
    goto :goto_1
.end method

.method public onConfigurationChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    return-void
.end method

.method public onDraggingInRecents(F)V
    .locals 4
    .param p1, "distanceFromTop"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 4
    .param p1, "velocity"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method public preloadRecents()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 52
    return-void
.end method

.method public showCurrentUserToast(II)V
    .locals 3
    .param p1, "msgResId"    # I
    .param p2, "msgLength"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    return-void
.end method

.method public showRecents(ZZZZZI)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "draggingInRecents"    # Z
    .param p3, "animate"    # Z
    .param p4, "reloadTasks"    # Z
    .param p5, "fromHome"    # Z
    .param p6, "growTarget"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 64
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 65
    if-eqz p2, :cond_1

    move v1, v2

    :goto_1
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 66
    if-eqz p3, :cond_2

    move v1, v2

    :goto_2
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 67
    if-eqz p4, :cond_3

    move v1, v2

    :goto_3
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 68
    if-eqz p5, :cond_4

    :goto_4
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 69
    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 70
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    return-void

    :cond_0
    move v1, v3

    .line 64
    goto :goto_0

    :cond_1
    move v1, v3

    .line 65
    goto :goto_1

    :cond_2
    move v1, v3

    .line 66
    goto :goto_2

    :cond_3
    move v1, v3

    .line 67
    goto :goto_3

    :cond_4
    move v2, v3

    .line 68
    goto :goto_4
.end method

.method public toggleRecents(I)V
    .locals 4
    .param p1, "growTarget"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 83
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 84
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImplProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void
.end method
