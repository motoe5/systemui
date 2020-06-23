.class Lcom/android/systemui/statusbar/phone/StatusBar$45;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->val$appUid:I

    .line 6614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6617
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$45$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->val$appUid:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$45$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$45;Landroid/content/Intent;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 6626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    .line 6627
    return v3
.end method
