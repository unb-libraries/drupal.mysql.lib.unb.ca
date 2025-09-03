<?php

namespace Dockworker\Robo\Plugin\Commands;

use Dockworker\DockworkerDaemonCommands;

/**
 * Provides commands for building and deploying the Mysql application.
 */
class MysqlDeployCommands extends DockworkerDaemonCommands
{
    /**
     * Provides error log trigers and exceptions for the mysql application.
     *
     * @hook on-event dockworker-logs-errors-exceptions
     *
     * @return mixed[]
     *   The error log exceptions.
     */
    public function provideErrorLogConfiguration(): array
    {
        return [
            [],
            array_values(
                [
                    'TZ Warning, not an error.' => 'as time zone. Skipping it.',
                    'Memory Warning, not an error.' => 'memory.pressure not writable',
                    'Uring Warning, not an error.' => 'sysctl kernel.io_uring_disabled has the value 2',
                    'Uring Warning2, not an error.' => 'create_uring failed: falling back to libaio',
                ]
            ),
        ];
    }
}