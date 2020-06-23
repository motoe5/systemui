.class Lcom/android/systemui/statusbar/policy/ImsIconController$3;
.super Landroid/database/ContentObserver;
.source "ImsIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ImsIconController;->initialize(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ImsIconController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ImsIconController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$3;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    .line 164
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$3;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$3;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ImsIconController;->-get0(Lcom/android/systemui/statusbar/policy/ImsIconController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ImsIconController;->-set1(Lcom/android/systemui/statusbar/policy/ImsIconController;Z)Z

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$3;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ImsIconController;->-wrap1(Lcom/android/systemui/statusbar/policy/ImsIconController;)V

    .line 168
    return-void
.end method
