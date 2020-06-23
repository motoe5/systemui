.class Lcom/android/systemui/statusbar/policy/ImsIconController$2;
.super Landroid/database/ContentObserver;
.source "ImsIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ImsIconController;->initialize(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ImsIconController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/ImsIconController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$2;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    .line 146
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$2;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    .line 149
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$2;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/ImsIconController;->-get0(Lcom/android/systemui/statusbar/policy/ImsIconController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 150
    const-string/jumbo v4, "sprint_cp_user_preference"

    .line 148
    invoke-static {v3, v4, v1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/ImsIconController;->-set0(Lcom/android/systemui/statusbar/policy/ImsIconController;Z)Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ImsIconController$2;->this$0:Lcom/android/systemui/statusbar/policy/ImsIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ImsIconController;->-wrap0(Lcom/android/systemui/statusbar/policy/ImsIconController;)V

    .line 152
    return-void

    :cond_0
    move v0, v1

    .line 148
    goto :goto_0
.end method
