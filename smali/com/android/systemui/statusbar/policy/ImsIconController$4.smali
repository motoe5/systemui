.class Lcom/android/systemui/statusbar/policy/ImsIconController$4;
.super Ljava/lang/Object;
.source "ImsIconController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ImsIconController;->onWifiConnectionStateChanged(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ImsIconController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ImsIconController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$4;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$4;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ImsIconController;->-wrap1(Lcom/android/systemui/statusbar/policy/ImsIconController;)V

    .line 365
    return-void
.end method
