.class public Lcom/android/systemui/pip/phone/PipMenuActivityController;
.super Ljava/lang/Object;
.source "PipMenuActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMenuActivityController$1;,
        Lcom/android/systemui/pip/phone/PipMenuActivityController$2;,
        Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppActions:Landroid/content/pm/ParceledListSlice;

.field private mContext:Landroid/content/Context;

.field private mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

.field private mMediaActions:Landroid/content/pm/ParceledListSlice;

.field private mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

.field private mMenuState:I

.field private mMessenger:Landroid/os/Messenger;

.field private mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

.field private mStartActivityRequested:Z

.field private mTmpDismissFractionData:Landroid/os/Bundle;

.field private mToActivityMessenger:Landroid/os/Messenger;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/pip/phone/InputConsumerController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Landroid/os/Messenger;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "-value"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "-value"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/pip/phone/PipMenuActivityController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "-value"    # Landroid/os/Messenger;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "menuState"    # I
    .param p2, "resize"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onMenuStateChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->updateMenuActions()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMediaController;Lcom/android/systemui/pip/phone/InputConsumerController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "mediaController"    # Lcom/android/systemui/pip/phone/PipMediaController;
    .param p4, "inputConsumerController"    # Lcom/android/systemui/pip/phone/InputConsumerController;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    .line 129
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMessenger:Landroid/os/Messenger;

    .line 179
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    .line 189
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    .line 190
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mActivityManager:Landroid/app/IActivityManager;

    .line 191
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    .line 192
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    .line 194
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method private isValidActions(Landroid/content/pm/ParceledListSlice;)Z
    .locals 2
    .param p1, "actions"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    const/4 v0, 0x0

    .line 415
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivityController_16409(IZLcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0
    .param p0, "menuState"    # I
    .param p1, "resize"    # Z
    .param p2, "l"    # Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    .prologue
    .line 432
    invoke-interface {p2, p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipMenuStateChanged(IZ)V

    return-void
.end method

.method private onMenuStateChanged(IZ)V
    .locals 2
    .param p1, "menuState"    # I
    .param p2, "resize"    # Z

    .prologue
    .line 426
    if-nez p1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/InputConsumerController;->registerInputConsumer()V

    .line 431
    :goto_0
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    if-eq p1, v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$4;

    invoke-direct {v1, p2, p1}, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$4;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 433
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMediaController;->addListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V

    .line 443
    :cond_0
    :goto_1
    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    .line 444
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/InputConsumerController;->unregisterInputConsumer()V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMediaController;->removeListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V

    goto :goto_1
.end method

.method private resolveMenuActions()Landroid/content/pm/ParceledListSlice;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isValidActions(Landroid/content/pm/ParceledListSlice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    return-object v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method private startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 8
    .param p1, "menuState"    # I
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBounds"    # Landroid/graphics/Rect;
    .param p4, "allowMenuTimeout"    # Z

    .prologue
    const/4 v7, 0x0

    .line 352
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    .line 353
    .local v3, "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v4, :cond_2

    .line 354
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v4, v4

    if-lez v4, :cond_2

    .line 355
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "messenger"

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 357
    const-string/jumbo v4, "actions"

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 358
    if-eqz p2, :cond_0

    .line 359
    const-string/jumbo v4, "stack_bounds"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 361
    :cond_0
    if-eqz p3, :cond_1

    .line 362
    const-string/jumbo v4, "movement_bounds"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 364
    :cond_1
    const-string/jumbo v4, "menu_state"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string/jumbo v4, "allow_timeout"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 368
    .local v2, "options":Landroid/app/ActivityOptions;
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    .line 367
    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 369
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 370
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 371
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    .line 379
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "options":Landroid/app/ActivityOptions;
    .end local v3    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    :goto_0
    return-void

    .line 373
    .restart local v3    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_2
    const-string/jumbo v4, "PipMenuActController"

    const-string/jumbo v5, "No PIP tasks found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v3    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v7, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    .line 377
    const-string/jumbo v4, "PipMenuActController"

    const-string/jumbo v5, "Error showing PIP menu activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateMenuActions()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 385
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v5, :cond_1

    .line 387
    const/4 v4, 0x0

    .line 389
    .local v4, "stackBounds":Landroid/graphics/Rect;
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    .line 390
    .local v3, "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v3, :cond_0

    .line 391
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v3    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v4    # "stackBounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 398
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v5, "stack_bounds"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 399
    const-string/jumbo v5, "actions"

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 400
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 401
    .local v2, "m":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 402
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v5, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "m":Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 393
    .restart local v4    # "stackBounds":Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "PipMenuActController"

    const-string/jumbo v6, "Error showing PIP menu activity"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 405
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "stackBounds":Landroid/graphics/Rect;
    .restart local v0    # "data":Landroid/os/Bundle;
    .restart local v2    # "m":Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 406
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "PipMenuActController"

    const-string/jumbo v6, "Could not notify menu activity to update actions"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PipMenuActController"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mMenuState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mToActivityMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mListeners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public hideMenu()V
    .locals 4

    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 309
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 310
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 313
    .restart local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipMenuActController"

    const-string/jumbo v3, "Could not notify menu to hide"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hideMenuWithoutResize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 325
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onMenuStateChanged(IZ)V

    .line 326
    return-void
.end method

.method public onActivityPinned()V
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/InputConsumerController;->registerInputConsumer()V

    .line 203
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 451
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 453
    :cond_0
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 4

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 208
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 209
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipMenuActController"

    const-string/jumbo v3, "Could not notify menu pinned animation ended"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pokeMenu()V
    .locals 4

    .prologue
    .line 288
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 289
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 290
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipMenuActController"

    const-string/jumbo v3, "Could not notify poke menu"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAppActions(Landroid/content/pm/ParceledListSlice;)V
    .locals 0
    .param p1, "appActions"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->updateMenuActions()V

    .line 334
    return-void
.end method

.method public setDismissFraction(F)V
    .locals 5
    .param p1, "fraction"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 235
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 237
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    const-string/jumbo v3, "dismiss_fraction"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 238
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 239
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 240
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 243
    .restart local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipMenuActController"

    const-string/jumbo v3, "Could not notify menu to update dismiss fraction"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-nez v2, :cond_0

    .line 247
    invoke-direct {p0, v4, v3, v3, v4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method public showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 5
    .param p1, "menuState"    # I
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBounds"    # Landroid/graphics/Rect;
    .param p4, "allowMenuTimeout"    # Z

    .prologue
    .line 262
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "menu_state"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    const-string/jumbo v3, "stack_bounds"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 266
    const-string/jumbo v3, "movement_bounds"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 267
    const-string/jumbo v3, "allow_timeout"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 269
    .local v2, "m":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 270
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 273
    .restart local v0    # "data":Landroid/os/Bundle;
    .restart local v2    # "m":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PipMenuActController"

    const-string/jumbo v4, "Could not notify menu to show"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 276
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "m":Landroid/os/Message;
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-nez v3, :cond_0

    .line 277
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method
