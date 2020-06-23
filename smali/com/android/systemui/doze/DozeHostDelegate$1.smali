.class Lcom/android/systemui/doze/DozeHostDelegate$1;
.super Ljava/lang/Object;
.source "DozeHostDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeHostDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeHostDelegate;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeHostDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeHostDelegate;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeHostDelegate$1;->this$0:Lcom/android/systemui/doze/DozeHostDelegate;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 50
    const-string/jumbo v0, "DozeHostDelegate"

    const-string/jumbo v1, "ServiceConnection - onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostDelegate$1;->this$0:Lcom/android/systemui/doze/DozeHostDelegate;

    invoke-static {p2}, Lcom/android/systemui/doze/IDozeHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/doze/IDozeHost;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    .line 54
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 59
    const-string/jumbo v0, "DozeHostDelegate"

    const-string/jumbo v1, "ServiceConnection - onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/doze/DozeHostDelegate$1;->this$0:Lcom/android/systemui/doze/DozeHostDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/doze/DozeHostDelegate;->mService:Lcom/android/systemui/doze/IDozeHost;

    .line 63
    return-void
.end method
