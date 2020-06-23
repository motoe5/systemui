.class final Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;
.super Landroid/os/Handler;
.source "RegisteredMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveHandler"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1
    .param p1, "connection"    # Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .prologue
    .line 663
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 664
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 665
    return-void
.end method

.method private processMessage(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "connection"    # Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;
    .param p2, "what"    # I
    .param p3, "requestId"    # I
    .param p4, "arg"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 690
    packed-switch p2, :pswitch_data_0

    .line 727
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 692
    :pswitch_0
    invoke-virtual {p1, p3}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onGenericFailure(I)Z

    .line 693
    return v1

    .line 696
    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onGenericSuccess(I)Z

    .line 697
    return v1

    .line 700
    :pswitch_2
    if-eqz p5, :cond_1

    instance-of v1, p5, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 701
    :cond_1
    check-cast p5, Landroid/os/Bundle;

    .end local p5    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p3, p4, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onRegistered(IILandroid/os/Bundle;)Z

    move-result v1

    return v1

    .line 706
    .restart local p5    # "obj":Ljava/lang/Object;
    :pswitch_3
    if-eqz p5, :cond_2

    instance-of v1, p5, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 707
    :cond_2
    check-cast p5, Landroid/os/Bundle;

    .end local p5    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onDescriptorChanged(Landroid/os/Bundle;)Z

    move-result v1

    return v1

    .line 712
    .restart local p5    # "obj":Ljava/lang/Object;
    :pswitch_4
    if-eqz p5, :cond_3

    instance-of v1, p5, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 714
    :cond_3
    check-cast p5, Landroid/os/Bundle;

    .line 713
    .end local p5    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p3, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onControlRequestSucceeded(ILandroid/os/Bundle;)Z

    move-result v1

    return v1

    .line 719
    .restart local p5    # "obj":Ljava/lang/Object;
    :pswitch_5
    if-eqz p5, :cond_4

    instance-of v1, p5, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 720
    :cond_4
    if-nez p6, :cond_5

    const/4 v0, 0x0

    .line 723
    :goto_0
    check-cast p5, Landroid/os/Bundle;

    .line 722
    .end local p5    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, p3, v0, p5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->onControlRequestFailed(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    return v1

    .line 721
    .restart local p5    # "obj":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v1, "error"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "error":Ljava/lang/String;
    goto :goto_0

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 669
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 673
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .line 674
    .local v1, "connection":Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;
    if-eqz v1, :cond_0

    .line 675
    iget v2, p1, Landroid/os/Message;->what:I

    .line 676
    .local v2, "what":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 677
    .local v3, "requestId":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 678
    .local v4, "arg":I
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 679
    .local v5, "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v6

    .local v6, "data":Landroid/os/Bundle;
    move-object v0, p0

    .line 680
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->processMessage(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 682
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unhandled message from server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .end local v2    # "what":I
    .end local v3    # "requestId":I
    .end local v4    # "arg":I
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "data":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
