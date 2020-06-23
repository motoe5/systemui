.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;


# static fields
.field static final DEBUG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDozeMachine:Lcom/android/systemui/doze/DozeMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "DozeService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 36
    iput-object p0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    .line 41
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDebug(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0, p2}, Lcom/android/systemui/doze/DozeMachine;->dump(Ljava/io/PrintWriter;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setWindowless(Z)V

    .line 50
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDebug(Z)V

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHostDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    .line 57
    return-void

    .line 60
    :cond_1
    new-instance v0, Lcom/android/systemui/doze/DozeFactory;

    invoke-direct {v0}, Lcom/android/systemui/doze/DozeFactory;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/DozeFactory;->assembleMachine(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 61
    invoke-static {p0}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHostDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeHostDelegate;->bindService(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDestroy()V

    .line 68
    invoke-static {p0}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHostDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeHostDelegate;->unbindService(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->startDozing()V

    .line 77
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 83
    return-void
.end method
