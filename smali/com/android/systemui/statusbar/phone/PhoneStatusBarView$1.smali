.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->-get0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisible()V

    .line 56
    :cond_0
    return-void
.end method
