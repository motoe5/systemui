.class Lcom/android/systemui/recents/model/RecentsTaskLoader$1;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsTaskLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;->this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onEntryEvicted(Lcom/android/systemui/recents/model/Task$TaskKey;)V
    .locals 2
    .param p1, "key"    # Lcom/android/systemui/recents/model/Task$TaskKey;

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader$1;->this$0:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-static {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->-get0(Lcom/android/systemui/recents/model/RecentsTaskLoader;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_0
    return-void
.end method
