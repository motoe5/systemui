.class Lcom/android/systemui/recents/RecentsActivity$3;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$3;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$3;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/16 v1, 0x120

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTask(I)Z

    .line 354
    return-void
.end method
