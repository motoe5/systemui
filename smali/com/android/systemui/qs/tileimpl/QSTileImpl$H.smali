.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.super Landroid/os/Handler;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 370
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    .local p1, "this$0":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 371
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 372
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "-this2"    # Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 376
    const/4 v2, 0x0

    .line 378
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v4, :cond_0

    .line 379
    const-string/jumbo v2, "handleAddCallback"

    .line 380
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v5, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap0(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 435
    .end local v2    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 381
    .local v2, "name":Ljava/lang/String;
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    .line 382
    const-string/jumbo v2, "handleRemoveCallbacks"

    .line 383
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap2(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 431
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "error":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v4, v0, v3}, Lcom/android/systemui/qs/QSHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 384
    .end local v0    # "error":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/Throwable;
    .local v2, "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    .line 385
    const-string/jumbo v2, "handleRemoveCallback"

    .line 386
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v5, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap1(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    .line 387
    .local v2, "name":Ljava/lang/String;
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 388
    const-string/jumbo v2, "handleClick"

    .line 389
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v4, :cond_3

    .line 391
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-get0(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 390
    invoke-static {v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v1

    .line 392
    .local v1, "intent":Landroid/content/Intent;
    const-class v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    .line 393
    const/4 v5, 0x0

    .line 392
    invoke-interface {v4, v1, v5}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    .line 395
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    goto :goto_0

    .line 397
    .local v2, "name":Ljava/lang/String;
    :cond_4
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 398
    const-string/jumbo v2, "handleSecondaryClick"

    .line 399
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick()V

    goto/16 :goto_0

    .line 400
    .local v2, "name":Ljava/lang/String;
    :cond_5
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 401
    const-string/jumbo v2, "handleLongClick"

    .line 402
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    goto/16 :goto_0

    .line 403
    .local v2, "name":Ljava/lang/String;
    :cond_6
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    .line 404
    const-string/jumbo v2, "handleRefreshState"

    .line 405
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 406
    .local v2, "name":Ljava/lang/String;
    :cond_7
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_9

    .line 407
    const-string/jumbo v2, "handleShowDetail"

    .line 408
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_8

    :goto_1
    invoke-static {v6, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap4(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_1

    .line 409
    .local v2, "name":Ljava/lang/String;
    :cond_9
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_a

    .line 410
    const-string/jumbo v2, "handleUserSwitch"

    .line 411
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    goto/16 :goto_0

    .line 412
    .local v2, "name":Ljava/lang/String;
    :cond_a
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_c

    .line 413
    const-string/jumbo v2, "handleToggleStateChanged"

    .line 414
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_b

    :goto_2
    invoke-static {v6, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap5(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_2

    .line 415
    .local v2, "name":Ljava/lang/String;
    :cond_c
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_e

    .line 416
    const-string/jumbo v2, "handleScanStateChanged"

    .line 417
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_d

    :goto_3
    invoke-static {v6, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap3(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_d
    move v4, v5

    goto :goto_3

    .line 418
    .local v2, "name":Ljava/lang/String;
    :cond_e
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_f

    .line 419
    const-string/jumbo v2, "handleDestroy"

    .line 420
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    goto/16 :goto_0

    .line 421
    .local v2, "name":Ljava/lang/String;
    :cond_f
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_10

    .line 422
    const-string/jumbo v2, "handleClearState"

    .line 423
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClearState()V

    goto/16 :goto_0

    .line 424
    .local v2, "name":Ljava/lang/String;
    :cond_10
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_12

    .line 425
    const-string/jumbo v2, "setListening"

    .line 426
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_11

    :goto_4
    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Z)V

    goto/16 :goto_0

    :cond_11
    move v4, v5

    goto :goto_4

    .line 428
    .local v2, "name":Ljava/lang/String;
    :cond_12
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
