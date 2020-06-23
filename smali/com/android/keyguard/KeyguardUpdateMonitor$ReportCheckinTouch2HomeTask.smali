.class Lcom/android/keyguard/KeyguardUpdateMonitor$ReportCheckinTouch2HomeTask;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReportCheckinTouch2HomeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field touch2Home:J


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p2, "duration"    # J

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$ReportCheckinTouch2HomeTask;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-wide p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$ReportCheckinTouch2HomeTask;->touch2Home:J

    .line 405
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$ReportCheckinTouch2HomeTask;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$ReportCheckinTouch2HomeTask;->touch2Home:J

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap25(Lcom/android/keyguard/KeyguardUpdateMonitor;J)V

    .line 409
    return-void
.end method
