.class Lcom/android/systemui/pip/phone/PipNotificationController$1;
.super Ljava/lang/Object;
.source "PipNotificationController.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipNotificationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipNotificationController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipNotificationController;->-get1(Lcom/android/systemui/pip/phone/PipNotificationController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 72
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 73
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipNotificationController;->-get0(Lcom/android/systemui/pip/phone/PipNotificationController;)Landroid/app/AppOpsManager;

    move-result-object v2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x43

    invoke-virtual {v2, v4, v3, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipNotificationController;->-get2(Lcom/android/systemui/pip/phone/PipNotificationController;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipNotificationController;->-wrap0(Lcom/android/systemui/pip/phone/PipNotificationController;)V

    goto :goto_0
.end method
