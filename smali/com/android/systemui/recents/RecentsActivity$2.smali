.class Lcom/android/systemui/recents/RecentsActivity$2;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_recents_RecentsActivity$2_11509()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    .line 228
    const/4 v1, 0x1

    .line 226
    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_RecentsActivity$2_11758()V
    .locals 2

    .prologue
    .line 231
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->startLoader(Landroid/content/Context;)V

    .line 232
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->setVisible(Z)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->-get1(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 224
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$2;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcom/android/systemui/recents/-$Lambda$tzHkkp2bcscWGDd1r792KLN9emc;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/-$Lambda$tzHkkp2bcscWGDd1r792KLN9emc;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 230
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/-$Lambda$tzHkkp2bcscWGDd1r792KLN9emc$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/-$Lambda$tzHkkp2bcscWGDd1r792KLN9emc$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 234
    const/4 v0, 0x1

    return v0
.end method
