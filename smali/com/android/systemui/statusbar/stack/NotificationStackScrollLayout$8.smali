.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1228
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I

    move-result v0

    .line 1229
    .local v0, "range":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/widget/OverScroller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get5(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get4(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get4(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)I

    move-result v4

    sub-int v4, v0, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1230
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set5(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z

    .line 1231
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set4(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z

    .line 1232
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$8;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 1233
    return-void
.end method
