.class Lcom/android/keyguard/KeyguardUpdateMonitor$3;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 748
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 751
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get3()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 752
    :try_start_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    .line 753
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set2(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 757
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get13(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 758
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get4(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "STOWED cleared, reenabling FPS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set1(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 761
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap26(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_2
    monitor-exit v2

    .line 771
    return-void

    :cond_1
    move v0, v1

    .line 753
    goto :goto_0

    .line 755
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3

    :goto_3
    invoke-static {v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set2(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move v0, v1

    .line 755
    goto :goto_3

    .line 763
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get4(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get5()I

    move-result v0

    if-ge v0, v7, :cond_5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get6()I

    move-result v0

    if-lt v0, v7, :cond_0

    .line 765
    :cond_5
    const-string/jumbo v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "FPS disabeld.  GATED BY STOWED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set1(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 767
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap26(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
