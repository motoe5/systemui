.class Lcom/android/systemui/statusbar/policy/ImsIconController$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ImsIconController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ImsIconController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$1;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    .line 135
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$1;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/ImsIconController;->-wrap2(Lcom/android/systemui/statusbar/policy/ImsIconController;Landroid/content/Intent;)V

    .line 138
    return-void
.end method
