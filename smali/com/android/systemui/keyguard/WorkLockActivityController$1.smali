.class Lcom/android/systemui/keyguard/WorkLockActivityController$1;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "WorkLockActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/WorkLockActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/WorkLockActivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/WorkLockActivityController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTaskProfileLocked(II)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityController;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/keyguard/WorkLockActivityController;->-wrap0(Lcom/android/systemui/keyguard/WorkLockActivityController;II)V

    .line 105
    return-void
.end method
