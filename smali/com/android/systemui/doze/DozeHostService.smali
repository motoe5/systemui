.class public Lcom/android/systemui/doze/DozeHostService;
.super Landroid/app/Service;
.source "DozeHostService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeHostService$1;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mBinder:Lcom/android/systemui/doze/IDozeHost$Stub;

.field private mDozeHostMediator:Lcom/android/systemui/doze/DozeHost;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/doze/DozeHostService;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeHostService;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/doze/DozeHostService;)Lcom/android/systemui/doze/DozeHost;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeHostService;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService;->mDozeHostMediator:Lcom/android/systemui/doze/DozeHost;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/doze/DozeHostService;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeHostService;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    const-string/jumbo v0, "DozeHostService"

    iput-object v0, p0, Lcom/android/systemui/doze/DozeHostService;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/android/systemui/doze/DozeHostService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeHostService$1;-><init>(Lcom/android/systemui/doze/DozeHostService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeHostService;->mBinder:Lcom/android/systemui/doze/IDozeHost$Stub;

    .line 20
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostService;->mBinder:Lcom/android/systemui/doze/IDozeHost$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeHostService;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/SystemUIApplication;

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeHostService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 29
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v1, Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/DozeHost;

    iput-object v1, p0, Lcom/android/systemui/doze/DozeHostService;->mDozeHostMediator:Lcom/android/systemui/doze/DozeHost;

    .line 32
    .end local v0    # "app":Lcom/android/systemui/SystemUIApplication;
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/doze/DozeHostService;->mHandler:Landroid/os/Handler;

    .line 33
    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostService;->mDozeHostMediator:Lcom/android/systemui/doze/DozeHost;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/doze/DozeHostService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No doze service host found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_1
    return-void
.end method
