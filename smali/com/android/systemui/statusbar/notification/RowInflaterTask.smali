.class public Lcom/android/systemui/statusbar/notification/RowInflaterTask;
.super Ljava/lang/Object;
.source "RowInflaterTask.java"

# interfaces
.implements Lcom/android/systemui/statusbar/InflationTask;
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;
    }
.end annotation


# instance fields
.field private mCancelled:Z

.field private mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mListener:Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mCancelled:Z

    .line 52
    return-void
.end method

.method public inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p4, "listener"    # Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;

    .prologue
    .line 42
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mListener:Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;

    .line 43
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-direct {v0, p1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "inflater":Landroid/support/v4/view/AsyncLayoutInflater;
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 45
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V

    .line 46
    const v1, 0x7f0d0112

    invoke-virtual {v0, v1, p2, p0}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 47
    return-void
.end method

.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resid"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mCancelled:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->onInflationTaskFinished()V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mListener:Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;->onInflationFinished(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 60
    :cond_0
    return-void
.end method
