.class Lcom/android/systemui/qs/customize/QSCustomizer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 261
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->-set0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get1(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 275
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->-wrap0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->-set0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get1(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 269
    return-void
.end method
