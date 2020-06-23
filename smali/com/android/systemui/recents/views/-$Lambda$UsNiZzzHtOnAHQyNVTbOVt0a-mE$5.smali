.class final synthetic Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    iget-object v2, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;->-$f3:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;->-$f0:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->lambda$-com_android_systemui_recents_views_RecentsTransitionHelper_5596(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;->-$f0:Z

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationStarted()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/recents/views/-$Lambda$UsNiZzzHtOnAHQyNVTbOVt0a-mE$5;->$m$0()V

    return-void
.end method
